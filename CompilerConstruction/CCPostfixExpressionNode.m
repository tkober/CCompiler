//
//  CCPostfixExpressionNode.m
//  CompilerConstruction
//
//  Created by Thorsten Kober on 09.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCPostfixExpressionNode.h"
#import "CCSyntaxNode+Private.h"


@implementation CCPostfixExpressionNode


#pragma mark - Customized Getters
- (NSString *)ruleName
{
    return NSStringFromClass([self class]);
}



#pragma mark - Public Methods
#pragma mark | Creators
+ (CCPostfixExpressionNode *)postfixExpressionNodeWithPrimaryExpression:(CCPrimaryExpressionNode *)primaryExpression
{
    CCPostfixExpressionNode *result = [self new];
    [result setPrimaryExpression:primaryExpression];
    return result;
}


+ (CCPostfixExpressionNode *)postfixExpressionNodeWithPostfixExpression:(CCPostfixExpressionNode *)postfixExpression
{
    CCPostfixExpressionNode *result = [self new];
    [result setPostfixExpression:postfixExpression];
    return result;
}


+ (CCPostfixExpressionNode *)postfixExpressionNodeWithPostfixExpression:(CCPostfixExpressionNode *)postfixExpression
                                                 argumentExpressionList:(CCArgumentExpressionListNode *)argumentExpressionList
{
    CCPostfixExpressionNode *result = [self new];
    [result setPostfixExpression:postfixExpression];
    [result setArgumentExpressionList:argumentExpressionList];
    return result;
}


+ (CCPostfixExpressionNode *)postfixExpressionNodeWithPostfixExpression:(CCPostfixExpressionNode *)postfixExpression
                                                        postfixOperator:(CCPostfixOperatorNode *)postfixOperator
{
    CCPostfixExpressionNode *result = [self new];
    [result setPostfixExpression:postfixExpression];
    [result setPostfixOperator:postfixOperator];
    return result;
}


#pragma mark | Printing
- (void)printToOutput:(id<CCOutput>)output
          indentLevel:(NSUInteger)indentLevel
{
    [super printLine:[NSString stringWithFormat:@"%@%@", (indentLevel > 0 ? @"--" : @""), self.ruleName]
            toOutput:output
         indentLevel:indentLevel];
    indentLevel++;
}

@end
