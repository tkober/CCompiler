//
//  CCShiftExpressionNode.m
//  CompilerConstruction
//
//  Created by Thorsten Kober on 09.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCShiftExpressionNode.h"


@implementation CCShiftExpressionNode


#pragma mark - Public Methods
#pragma mark | Creators
+ (CCShiftExpressionNode *)shiftExpressionNodeWithAdditiveExpression:(CCAdditiveExpressionNode *)additiveExpression
                                                       shiftOperator:(CCShiftOperatorNode *)shiftOperator
                                                     shiftExpression:(CCShiftExpressionNode *)shiftExpression
{
    CCShiftExpressionNode *result = [self new];
    [result setAdditiveExpression:additiveExpression];
    [result setShiftOperator:shiftOperator];
    [result setShiftExpression:shiftExpression];
    return result;
}

@end
