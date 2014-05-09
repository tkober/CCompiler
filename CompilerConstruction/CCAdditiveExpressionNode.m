//
//  CCAdditiveExpressionNode.m
//  CompilerConstruction
//
//  Created by Thorsten Kober on 09.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCAdditiveExpressionNode.h"


@implementation CCAdditiveExpressionNode


#pragma mark - Public Methods
#pragma mark | Creators
+ (CCAdditiveExpressionNode *)additiveExpressionNodeWithMultiplicativeExpression:(CCMultiplicativeExpressionNode *)multiplicativeExpression
                                                                additiveOperator:(CCAdditiveOperatorNode *)additiveOperator
                                                              additiveExpression:(CCAdditiveExpressionNode *)additiveExpression
{
    CCAdditiveExpressionNode *result = [self new];
    [result setMultiplicativeExpression:multiplicativeExpression];
    [result setAdditiveOperator:additiveOperator];
    [result setAdditiveExpression:additiveExpression];
    return result;
}

@end
