//
//  CCSyntaxNode.m
//  CompilerConstruction
//
//  Created by Thorsten Kober on 08.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCSyntaxNode.h"
#import "CCSyntaxNode+Private.h"


@implementation CCSyntaxNode


#pragma mark - Customized Getters
- (NSString *)ruleName
{
    return @"<ABSTRACT_SYNTAX_NODE>";
}


- (NSArray *)compileTimeType
{
    return @[@(CCCompileTimeTypeNotDeterminable)];
}


#pragma mark - Private Methods
#pragma mark | Printing
- (void)printLine:(NSString *)line
         toOutput:(id<CCOutput>)output
      indentLevel:(NSUInteger)indentLevel
{
    for (NSUInteger i = 0; i < indentLevel; i++) {
        [output printResult:@"   |"];
    }
    [output printResult:[NSString stringWithFormat:@"%@\n", line]];
}


- (void)printRemovedSelfWarningToOutput:(id<CCOutput>)output
{
    [output printWarning:[NSString stringWithFormat:@"Warning: removed node '%@'\n", self.ruleName]];
}


- (NSString *)stringFromCompileTimeTypes:(NSArray *)compileTimeTypes
{
    NSMutableString *result = [NSMutableString string];
    for (NSUInteger i = 0; i < compileTimeTypes.count; i++) {
        CCCompileTimeType compileTimeType = (CCCompileTimeType)[(NSNumber *)compileTimeTypes[i] unsignedIntegerValue];
        [result appendFormat:@"%@%@", (i > 0 ? @" " : @""), [self stringFromCompileTimeType:compileTimeType]];
    }
    return result;
}


- (NSString *)stringFromCompileTimeType:(CCCompileTimeType)compileTimeType
{
    switch (compileTimeType) {
        case CCCompileTimeTypeNotDeterminable:
            return @"not_determinable";
            
        case CCCompileTimeTypeVoid:
            return @"void";
            
        case CCCompileTimeTypeChar:
            return @"char";
            
        case CCCompileTimeTypeShort:
            return @"short";
            
        case CCCompileTimeTypeInt:
            return @"int";
            
        case CCCompileTimeTypeSigned:
            return @"signed";
            
        case CCCompileTimeTypeUnsigned:
            return @"unsigned";
            
        case CCCompileTimeTypeLong:
            return @"long";
            
        case CCCompileTimeTypeFloat:
            return @"float";
            
        case CCCompileTimeTypeDouble:
            return @"double";
            
        default:
            return @"<UNKNOWN>";
    }
}



#pragma mark - Public Methods
#pragma mark - Public Methods
#pragma mark | Optimization
- (CCSyntaxNode *)optimize:(id<CCOutput>)output
{
    return self;
}


#pragma mark | Printing
- (void)printToOutput:(id<CCOutput>)output
          indentLevel:(NSUInteger)indentLevel
{
    [self printLine:self.ruleName
           toOutput:output
        indentLevel:indentLevel];
}


#if DEALLOC_DEBUG
- (void)dealloc
{
    NSLog(@"%s:: class -> %@", __PRETTY_FUNCTION__, self.className);
}
#endif

@end