//
//  CCLogicalAndExpressionNode.m
//  CompilerConstruction
//
//  Created by Thorsten Kober on 09.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCLogicalAndExpressionNode.h"


@implementation CCLogicalAndExpressionNode


#pragma mark - Public Methods
#pragma mark | Creators
+ (CCLogicalAndExpressionNode *)logicalAndExpressionNodeWithInclusiveOrExpression:(CCInclusiveOrExpressionNode *)inclusiveOrExpression
                                                             logicalAndExpression:(CCLogicalAndExpressionNode *)logicalAndExpression
{
    CCLogicalAndExpressionNode *result = [self new];
    [result setInclusiveOrExpression:inclusiveOrExpression];
    [result setLogicalAndExpression:logicalAndExpression];
    return result;
}

@end
