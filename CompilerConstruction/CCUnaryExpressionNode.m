//
//  CCUnaryExpressionNode.m
//  CompilerConstruction
//
//  Created by Thorsten Kober on 09.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCUnaryExpressionNode.h"
#import "CCSyntaxNode+Private.h"


@implementation CCUnaryExpressionNode


#pragma mark - Customized Getters
- (NSString *)ruleName
{
    return NSStringFromClass([self class]);
}



#pragma mark - Public Methods
#pragma mark | Creators
+ (CCUnaryExpressionNode *)unaryExpressionNodeWithPostfixExpression:(CCPostfixExpressionNode *)postfixExpression
{
    CCUnaryExpressionNode *result = [self new];
    [result setPostfixExpression:postfixExpression];
    return result;
}


+ (CCUnaryExpressionNode *)unaryExpressionNodeWithPrefixOperator:(CCPrefixOperatorNode *)prefixOperator
                                                 unaryExpression:(CCUnaryExpressionNode *)unaryExpression
{
    CCUnaryExpressionNode *result = [self new];
    [result setPrefixOperator:prefixOperator];
    [result setUnaryExpression:unaryExpression];
    return result;
}


+ (CCUnaryExpressionNode *)unaryExpressionNodeWithUnaryOperator:(CCUnaryOperatorNode *)unaryOperator
{
    CCUnaryExpressionNode *result = [self new];
    [result setUnaryOperator:unaryOperator];
    return result;
}


#pragma mark | Printing
- (void)printToOutput:(id<CCOutput>)output
          indentLevel:(NSUInteger)indentLevel
{
    [super printLine:[NSString stringWithFormat:@"%@%@", (indentLevel > 0 ? @"--" : @""), self.ruleName]
            toOutput:output
         indentLevel:indentLevel];
}

@end
