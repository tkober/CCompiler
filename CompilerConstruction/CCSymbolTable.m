//
//  CCSymbolTable.m
//  CompilerConstruction
//
//  Created by Thorsten Kober on 05.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCSymbolTable.h"
#import "CCSymbolNew.h"
#import "CCSymbolReference.h"


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
- (void)addReferenceWithName:(NSString *)name
                      inFile:(NSString *)filename
                      atLine:(NSNumber *)line;
- (CCSymbolNew *)lookUpSymbolWithName:(NSString *)name;
- (NSUInteger)hashForSymbolWithName:(const char *)name;




@end

#pragma mark -
#pragma mark -
@implementation CCSymbolTable


static CCSymbolTable *_sharedInstance = nil;
CCSymbolNew *_symbolTableNew[HASH_TABLE_SIZE];


#pragma mark - Private methods
#pragma mark | Initializer
- (id)initHidden
{
    return [super init];
}


#pragma mark | Symbol Table
- (void)addReferenceWithName:(NSString *)name
                      inFile:(NSString *)filename
                      atLine:(NSNumber *)line
{
    CCSymbolReference *reference;
    CCSymbolNew *symbol = [self lookUpSymbolWithName:name];
    if (symbol.references &&
        [symbol.references.fileName isEqualToString:filename] &&
        [symbol.references.line isEqualToNumber:line]) return;
    
    reference = [CCSymbolReference symbolReferenceInFile:filename
                                                  atLine:line];
    [reference setSuccessor:symbol.references];
    [symbol setReferences:reference];
}


- (CCSymbolNew *)lookUpSymbolWithName:(NSString *)name
{
    NSInteger hash = [self hashForSymbolWithName:name.UTF8String] % HASH_TABLE_SIZE;
    NSInteger symbolCount = HASH_TABLE_SIZE;
    while (--symbolCount >= 0) {
        // Match
        if ([_symbolTableNew[hash].name isEqualToString:name]) return _symbolTableNew[hash];
        // New Entry
        if (!_symbolTableNew[hash]) {
            _symbolTableNew[hash] = [CCSymbolNew symbolWithName:name];
            return _symbolTableNew[hash];
        };
        // Collision: Next!
        hash = (hash+1) % HASH_TABLE_SIZE;
    }
    @throw [NSException exceptionWithName:@"SymbolTableException"
                                   reason:@"Symbol table is full!"
                                 userInfo:nil];

}


- (NSUInteger)hashForSymbolWithName:(const char *)name
{
    NSUInteger hash = 0;
    unsigned int c;
    while ((c = *name++))
        hash = hash*9 ^ c;
    return hash;
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
        [self addReferenceWithName:[[NSString alloc] initWithUTF8String:name]
                            inFile:[[NSString alloc] initWithUTF8String:filename]
                            atLine:@(line)];
    }
    @catch (NSException *exception) {
        [self.output printError:exception.description];
    }
}


#pragma mark | Printing
- (void)printSymbolTable:(id<CCOutput>)output
{
    output = output ? output : self.output;
    NSMutableArray *symbols = [NSMutableArray array];
    for (NSUInteger i = 0; i < HASH_TABLE_SIZE; i++) {
        if (_symbolTableNew[i]) [symbols addObject:_symbolTableNew[i]];
    }
    [symbols sortUsingDescriptors:@[[NSSortDescriptor sortDescriptorWithKey:@"name"
                                                                  ascending:YES]]];
    [output printInfo:@"\nSYMBOL TABLE\n\n"];
    [output printInfo:@"Symbol\t\tFile\t\t\t\tLines\n"];
    [output printInfo:@"=======================================================\n"];
    for (CCSymbolNew *symbol in symbols) {
        [symbol printSymbolToOutput:output];
        [output printInfo:@"\n-------------------------------------------------------\n"];
    }
    [output printInfo:@"\n"];
    [output printInfo:@"=======================================================\n"];
}


@end
