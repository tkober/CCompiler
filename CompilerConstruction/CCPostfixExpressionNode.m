//
//  CCPostfixExpressionNode.m
//  CompilerConstruction
//
//  Created by Thorsten Kober on 09.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCPostfixExpressionNode.h"
#import "CCSyntaxNode+Private.h"
#import "CCPrimaryExpressionNode.h"
#import "CCArgumentExpressionListNode.h"
#import "CCPostfixOperatorNode.h"


@implementation CCPostfixExpressionNode


#pragma mark - Customized Getters
- (NSString *)ruleName
{
    return @"postfix_expression";
}



#pragma mark - Public Methods
#pragma mark | Optimization
- (CCSyntaxNode *)optimize
{
    return self;
}


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
    if (self.primaryExpression) {
        [self.primaryExpression printToOutput:output
                                  indentLevel:indentLevel];
        return;
    }
    if (self.postfixExpression) {
        [self.postfixExpression printToOutput:output
                                  indentLevel:indentLevel];
        if (self.argumentExpressionList) {
            PRINT_EMPTY_LINE(output, indentLevel);
            [self.argumentExpressionList printToOutput:output
                                           indentLevel:indentLevel];
        } else if (self.postfixOperator) {
            PRINT_EMPTY_LINE(output, indentLevel);
            [self.postfixOperator printToOutput:output
                                    indentLevel:indentLevel];
        }
    }
}

@end
