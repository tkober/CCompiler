//
//  CCUnaryOperatorNode.m
//  CompilerConstruction
//
//  Created by Thorsten Kober on 09.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCUnaryOperatorNode.h"
#import "CCSyntaxNode+Private.h"


@implementation CCUnaryOperatorNode


#pragma mark - Customized Getters
- (NSString *)ruleName
{
    return NSStringFromClass([self class]);
}



#pragma mark - Public Methods
#pragma mark | Creators
+ (CCUnaryOperatorNode *)CC_UNARY_AND_OP
{
    CCUnaryOperatorNode *result = [self new];
    [result setUnaryOperator:CC_UNARY_ADD_OP];
    return result;
}


+ (CCUnaryOperatorNode *)CC_UNARY_MUL_OP
{
    CCUnaryOperatorNode *result = [self new];
    [result setUnaryOperator:CC_UNARY_MUL_OP];
    return result;
}


+ (CCUnaryOperatorNode *)CC_UNARY_ADD_OP
{
    CCUnaryOperatorNode *result = [self new];
    [result setUnaryOperator:CC_UNARY_ADD_OP];
    return result;
}


+ (CCUnaryOperatorNode *)CC_UNARY_SUB_OP
{
    CCUnaryOperatorNode *result = [self new];
    [result setUnaryOperator:CC_UNARY_SUB_OP];
    return result;
}


+ (CCUnaryOperatorNode *)CC_UNARY_BITWISE_NOT_OP
{
    CCUnaryOperatorNode *result = [self new];
    [result setUnaryOperator:CC_UNARY_BITWISE_NOT_OP];
    return result;
}


+ (CCUnaryOperatorNode *)CC_UNARY_NOT_OP
{
    CCUnaryOperatorNode *result = [self new];
    [result setUnaryOperator:CC_UNARY_NOT_OP];
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
