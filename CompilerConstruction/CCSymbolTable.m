//
//  CCSymbolTable.m
//  CompilerConstruction
//
//  Created by Thorsten Kober on 05.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCSymbolTable.h"
#import "CCSymbol.h"
#import "CCSymbolReference.h"


NSUInteger const HASH_TABLE_SIZE = 9997;

NSString *const SYMBOL_HASH = @"symbol_hash";
NSString *const SYMBOL = @"symbol";


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
- (CCSymbolReference *)addReferenceWithName:(NSString *)name
                                     inFile:(NSString *)filename
                                     atLine:(NSNumber *)line
                                       hash:(NSNumber **)hash
                            alreadyDeclared:(BOOL *)alreadyDeclared;
- (CCSymbol *)lookUpSymbolWithName:(NSString *)name
                              hash:(NSNumber **)hash
                   alreadyDeclared:(BOOL *)alreadyDeclared;
- (NSUInteger)hashForSymbolWithName:(const char *)name;




@end

#pragma mark -
#pragma mark -
@implementation CCSymbolTable


static CCSymbolTable *_sharedInstance = nil;
CCSymbol *_symbolTable[HASH_TABLE_SIZE];


#pragma mark - Private methods
#pragma mark | Initializer
- (id)initHidden
{
    return [super init];
}


#pragma mark | Symbol Table
- (CCSymbolReference *)addReferenceWithName:(NSString *)name
                            inFile:(NSString *)filename
                            atLine:(NSNumber *)line
                              hash:(NSNumber **)hash
                   alreadyDeclared:(BOOL *)alreadyDeclared
{
    CCSymbolReference *reference;
    CCSymbol *symbol = [self lookUpSymbolWithName:name
                                             hash:hash
                                  alreadyDeclared:alreadyDeclared];
    if (symbol.references &&
        [symbol.references.fileName isEqualToString:filename] &&
        [symbol.references.line isEqualToNumber:line]) return symbol.references;
    
    reference = [CCSymbolReference symbolReferenceInFile:filename
                                                  atLine:line];
    [reference setSuccessor:symbol.references];
    [reference setSymbol:symbol];
    [symbol setReferences:reference];
    return reference;
}


- (CCSymbol *)lookUpSymbolWithName:(NSString *)name
                              hash:(NSNumber **)hash
                   alreadyDeclared:(BOOL *)alreadyDeclared
{
    NSInteger hashedPosition = [self hashForSymbolWithName:name.UTF8String] % HASH_TABLE_SIZE;
    NSInteger symbolCount = HASH_TABLE_SIZE;
    while (--symbolCount >= 0) {
        // Match
        if ([_symbolTable[hashedPosition].name isEqualToString:name]) {
            *alreadyDeclared = YES;
            *hash = @(hashedPosition);
            return _symbolTable[hashedPosition];
        }
        // New Entry
        if (!_symbolTable[hashedPosition]) {
            _symbolTable[hashedPosition] = [CCSymbol symbolWithName:name];
            *alreadyDeclared = NO;
            *hash = @(hashedPosition);
            return _symbolTable[hashedPosition];
        };
        // Collision: Next!
        hashedPosition = (hashedPosition+1) % HASH_TABLE_SIZE;
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
- (CCSymbolReference *)addReferenceSymbol:(char *)name
                                     file:(char *)filename
                                     line:(unsigned int)line
                                     hash:(NSNumber **)hash
                          alreadyDeclared:(BOOL *)alreadyDeclared
{
    CCSymbolReference *result;
    @try {
        result = [self addReferenceWithName:[[NSString alloc] initWithUTF8String:name]
                                     inFile:[[NSString alloc] initWithUTF8String:filename]
                                     atLine:@(line)
                                       hash:hash
                            alreadyDeclared:alreadyDeclared];
    }
    @catch (NSException *exception) {
        [self.output printError:exception.description];
    }
    @finally {
        return result;
    }
}


#pragma mark | Purging Table
- (void)purge
{
    for (NSUInteger i = 0; i < HASH_TABLE_SIZE; i++) {
        _symbolTable[i] = nil;
    }
}


#pragma mark | Printing
- (void)printSymbolTable:(id<CCOutput>)output
{
    output = output ? output : self.output;
    NSMutableArray *symbols = [NSMutableArray array];
    for (NSUInteger i = 0; i < HASH_TABLE_SIZE; i++) {
        if (_symbolTable[i]) [symbols addObject:@{SYMBOL_HASH: @(i),
                                                  SYMBOL: _symbolTable[i]}];
    }
    [symbols sortUsingDescriptors:@[[NSSortDescriptor sortDescriptorWithKey:@"name"
                                                                  ascending:YES]]];
    [output printInfo:@"\nSYMBOL TABLE\n\n"];
    [output printInfo:@"Hash\t\tSymbol\t\tFile\t\t\t\tLines\n"];
    [output printInfo:@"=======================================================\n"];
    for (NSDictionary *symbolsAndHashes in symbols) {
        CCSymbol *symbol = [symbolsAndHashes valueForKey:SYMBOL];
        [output printInfo:[NSString stringWithFormat:@"%@\t\t", [(NSNumber *)[symbolsAndHashes valueForKey:SYMBOL_HASH] stringValue]]];
        [symbol printSymbolToOutput:output];
        [output printInfo:@"\n-------------------------------------------------------\n"];
    }
    [output printInfo:@"\n"];
}


@end
