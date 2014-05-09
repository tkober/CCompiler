//
//  CCRelationalExpressionNode.m
//  CompilerConstruction
//
//  Created by Thorsten Kober on 09.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCRelationalExpressionNode.h"


@implementation CCRelationalExpressionNode


#pragma mark - Public Methods
#pragma mark | Creators
+ (CCRelationalExpressionNode *)relationalExpressionNodeWithShiftExpression:(CCShiftExpressionNode *)shiftExpression
                                                            compareOperator:(CCCompareOperatorNode *)compareOperator
                                                       relationalExpression:(CCRelationalExpressionNode *)relationalExpression
{
    CCRelationalExpressionNode *result = [self new];
    [result setShiftExpression:shiftExpression];
    [result setComareOperator:compareOperator];
    [result setRelationalExpression:relationalExpression];
    return result;
}

@end
