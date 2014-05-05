//
//  CCSymbolTable.m
//  CompilerConstruction
//
//  Created by Thorsten Kober on 05.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCSymbolTable.h"


struct CCSymbolRef {
    struct CCSymbolRef *successor;
    char *filename;
    unsigned int line;
};
typedef struct CCSymbolRef CCSymbolRef;


struct CCSymbol {
    char *name;
    CCSymbolRef *referenceList;
};
typedef struct CCSymbol CCSymbol;


NSUInteger const HASH_TABLE_SIZE = 9997;


@interface CCSymbolTable ()

/*!
 * Hidden initializer to ensure a single instance.
 *
 * @warning This method should only be called once and synchronized from the
 * sharedInstance accessor.
 *
 * @return An instance of CCSymbolTable.
 */
- (id)initHidden;


#pragma mark | Symbol Table
CCSymbol *lookUp(char *name);
void addReference(char *name, char *filename, unsigned int line);
unsigned int symbolHash(char *name);
int symbolCompare(const void *xa, const void *xb);

@end

#pragma mark -
#pragma mark -
@implementation CCSymbolTable


static CCSymbolTable *_sharedInstance = nil;
CCSymbol _symbolTable[HASH_TABLE_SIZE];


#pragma mark - Private methods
#pragma mark | Initializer
- (id)initHidden
{
    return [super init];
}


#pragma mark | Symbol Table
CCSymbol *lookUp(char *name)
{
    CCSymbol *symbol = &_symbolTable[symbolHash(name)%HASH_TABLE_SIZE];
    int symbolCount = HASH_TABLE_SIZE;
    
    while (--symbolCount >= 0) {
        // Match
        if (symbol->name && !strcasecmp(symbol->name, name)) return symbol;
        // New enty
        if (!symbol->name) {
            symbol->name = strdup(name);
            symbol->referenceList = NULL;
            return symbol;
        }
        // Collision: Next!
        if (++symbol >= _symbolTable+HASH_TABLE_SIZE) symbol = _symbolTable;
    }
    [NSException raise:@"SymbolTableException"
                format:@"Symbol table is full!"];
    return NULL;
}


void addReference(char *name, char *filename, unsigned int line)
{
    CCSymbolRef *reference;
    CCSymbol *symbol = lookUp(name);
    
    if (symbol->referenceList &&
        symbol->referenceList->filename == filename &&
        symbol->referenceList->line == line) return;
    
    reference = malloc(sizeof(CCSymbolRef));
    if (!reference) {
        [NSException raise:NSMallocException
                    format:@"Out of space!"];
    }
    reference->successor = symbol->referenceList;
    reference->filename = filename;
    reference->line = line;
    symbol->referenceList = reference;
}


unsigned int symbolHash(char *name)
{
    unsigned int hash = 0;
    unsigned int c;
    while ((c = *name++))
        hash = hash*9 ^ c;
    return hash;
}


int symbolCompare(const void *xa, const void *xb)
{
    const CCSymbol *a = xa;
    const CCSymbol *b = xb;
    
    if (!a->name) {
        if (!b->name) return 0;     // Both empty
        return 1;                   // b > empty a
    }
    if (!b->name) return -1;        // a > empty b
    return strcmp(a->name, b->name);
}



#pragma mark - Public methods
#pragma mark | Creators
+ (CCSymbolTable *)sharedInstance
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedInstance = [[self alloc] initHidden];
    });
    return _sharedInstance;
}


#pragma mark | Initializer
#pragma mark @Overridden
- (id)init
{
    return nil;
}


#pragma mark | Adding References
- (void)addReferenceSymbol:(char *)name
                      file:(char *)filename
                      line:(unsigned int)line
{
    @try {
        addReference(name, filename, line);
    }
    @catch (NSException *exception) {
        [self.output printError:exception.description];
    }
}


#pragma mark | Printing
- (void)printSymbolTable:(id<CCOutput>)output
{
    output = output ? output : self.output;
    CCSymbol *symbol;
    qsort(_symbolTable, HASH_TABLE_SIZE, sizeof(CCSymbol), symbolCompare);
    [output printInfo:@"\n\nSymbol Table\n"];
    [output printInfo:@"========================================================================\n"];
    [output printInfo:@"Symbol\t\tFile\t\t\t\t\tLines\n"];
    for (symbol = _symbolTable; symbol->name && symbol < _symbolTable+HASH_TABLE_SIZE; symbol++) {
        char *previousFilename = NULL;
        CCSymbolRef *reference = symbol->referenceList;
        CCSymbolRef *previousReference = 0;
        CCSymbolRef *nextReference;
        
        do {
            nextReference = reference->successor;
            reference->successor = previousReference;
            previousReference = reference;
            reference = nextReference;
        } while (reference);
        
        [output printInfo:[NSString stringWithFormat:@"%s", symbol->name]];
        for (reference = previousReference; reference; reference = reference->successor) {
            if (reference->filename  == previousFilename) {
                [output printInfo:[NSString stringWithFormat:@"  %d", reference->line]];
            } else {
                [output printInfo:[NSString stringWithFormat:@"\t\t\t%s\t\t\t%d", reference->filename, reference->line]];
                previousFilename = reference->filename;
            }
        }
        [output printInfo:@"\n"];
    }
    [output printInfo:@"========================================================================\n\n"];
}

@end
