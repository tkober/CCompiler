//
//  CCMultiplicativeExpressionNode.m
//  CompilerConstruction
//
//  Created by Thorsten Kober on 09.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCMultiplicativeExpressionNode.h"
#import "CCSyntaxNode+Private.h"


@implementation CCMultiplicativeExpressionNode


#pragma mark - Customized Getters
- (NSString *)ruleName
{
    return NSStringFromClass([self class]);
}



#pragma mark - Public Methods
#pragma mark | Creators
+ (CCMultiplicativeExpressionNode *)multiplicativeExpressionNodeWithUnaryExpression:(CCUnaryExpressionNode *)unaryExpression
                                                             multiplicativeOperator:(CCMultiplicativeOperatorNode *)multiplicativeOperator
                                                           multiplicativeExpression:(CCMultiplicativeExpressionNode *)multiplicativeExpression
{
    CCMultiplicativeExpressionNode *result = [self new];
    [result setUnaryExpression:unaryExpression];
    [result setMultiplicativeOperator:multiplicativeOperator];
    [result setMultiplicativeExpression:multiplicativeExpression];
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
