//
//  CCUnaryExpressionNode.m
//  CompilerConstruction
//
//  Created by Thorsten Kober on 09.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCUnaryExpressionNode.h"
#import "CCSyntaxNode+Private.h"
#import "CCPostfixExpressionNode.h"
#import "CCPrefixOperatorNode.h"
#import "CCUnaryOperatorNode.h"


@implementation CCUnaryExpressionNode


#pragma mark - Customized Getters
- (NSString *)ruleName
{
    return @"unary_expression";
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
    indentLevel++;
    if (self.postfixExpression) {
        [self.postfixExpression printToOutput:output
                                  indentLevel:indentLevel];
        return;
    }
    if (self.prefixOperator &&
        self.unaryExpression) {
        [self.prefixOperator printToOutput:output
                               indentLevel:indentLevel];
        PRINT_EMPTY_LINE(output, indentLevel);
        [self.unaryExpression printToOutput:output
                                indentLevel:indentLevel];
        return;
    }
    if (self.unaryOperator) {
        [self.unaryOperator printToOutput:output
                              indentLevel:indentLevel];
    }
}

@end
