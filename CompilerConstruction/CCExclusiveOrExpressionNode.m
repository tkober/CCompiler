//
//  CCExclusiveOrExpressionNode.m
//  CompilerConstruction
//
//  Created by Thorsten Kober on 09.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCExclusiveOrExpressionNode.h"


@implementation CCExclusiveOrExpressionNode


#pragma mark - Public Methods
#pragma mark | Creators
+ (CCExclusiveOrExpressionNode *)exclusiveOrExpressionNodeWithAndExpression:(CCAndExpressionNode *)andExpression
                                                      exclusiveOrExpression:(CCExclusiveOrExpressionNode *)exclusiveOrExpression
{
    CCExclusiveOrExpressionNode *result = [self new];
    [result setAndExpression:andExpression];
    [result setExclusiveOrExpression:exclusiveOrExpression];
    return result;
}

@end
