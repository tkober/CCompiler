//
//  CCLogicalOrExpression.m
//  CompilerConstruction
//
//  Created by Thorsten Kober on 09.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCLogicalOrExpressionNode.h"


@implementation CCLogicalOrExpressionNode


#pragma mark - Public Methods
#pragma mark | Creators
+ (CCLogicalOrExpressionNode *)logicalOrExpressionNodeWithLogicalAndExpression:(CCLogicalAndExpressionNode *)logicalAndExpression
                                                           logicalOrExpression:(CCLogicalOrExpressionNode *)logicalOrExpression
{
    CCLogicalOrExpressionNode *result = [self new];
    [result setLogicalAndExpression:logicalAndExpression];
    [result setLogicalOrExpression:logicalOrExpression];
    return result;
}

@end
