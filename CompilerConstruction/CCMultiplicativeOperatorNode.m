//
//  CCMultiplicativeOperatorNode.m
//  CompilerConstruction
//
//  Created by Thorsten Kober on 09.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCMultiplicativeOperatorNode.h"
#import "CCSyntaxNode+Private.h"


@implementation CCMultiplicativeOperatorNode


#pragma mark - Customized Getters
- (NSString *)ruleName
{
    return NSStringFromClass([self class]);
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
    [super printLine:self.ruleName
            toOutput:output
         indentLevel:indentLevel];
}

@end
