//
//  CCMultiplicativeExpressionNode.m
//  CompilerConstruction
//
//  Created by Thorsten Kober on 09.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCMultiplicativeExpressionNode.h"


@implementation CCMultiplicativeExpressionNode


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

@end
