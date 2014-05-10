//
//  CCMultiplicativeOperatorNode.m
//  CompilerConstruction
//
//  Created by Thorsten Kober on 09.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCMultiplicativeOperatorNode.h"
#import "CCSyntaxNode+Private.h"


@interface CCMultiplicativeOperatorNode ()
@property (strong, nonatomic, readonly) NSString *multiplicativeOperatorString;

@end

#pragma mark -
#pragma mark -
@implementation CCMultiplicativeOperatorNode


#pragma mark - Customized Getters
- (NSString *)ruleName
{
    return @"multiplicative_operator";
}


- (NSString *)multiplicativeOperatorString
{
    switch (self.multiplicativeOperator) {
        case CC_MUL_OP:
            return @"'*'";
            
        case CC_DIV_OP:
            return @"'/'";
            
        case CC_MOD_OP:
            return @"'%'";
            
        default:
            return @"UNKNOWN";
    }
}



#pragma mark - Public Methods
#pragma mark | Creators
+ (CCMultiplicativeOperatorNode *)CC_MUL_OP
{
    CCMultiplicativeOperatorNode *result = [self new];
    [result setMultiplicativeOperator:CC_MUL_OP];
    return result;
}


+ (CCMultiplicativeOperatorNode *)CC_DIV_OP
{
    CCMultiplicativeOperatorNode *result = [self new];
    [result setMultiplicativeOperator:CC_DIV_OP];
    return result;
}


+ (CCMultiplicativeOperatorNode *)CC_MOD_OP
{
    CCMultiplicativeOperatorNode *result = [self new];
    [result setMultiplicativeOperator:CC_MOD_OP];
    return result;
}


#pragma mark | Printing
- (void)printToOutput:(id<CCOutput>)output
          indentLevel:(NSUInteger)indentLevel
{
    [super printLine:[NSString stringWithFormat:@"%@%@<%@>", (indentLevel > 0 ? @"--" : @""), self.ruleName, self.multiplicativeOperatorString]
            toOutput:output
         indentLevel:indentLevel];
}

@end
