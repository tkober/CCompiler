//
//  CCInclusiveOrExpressionNode.m
//  CompilerConstruction
//
//  Created by Thorsten Kober on 09.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCInclusiveOrExpressionNode.h"


@implementation CCInclusiveOrExpressionNode


#pragma mark - Public Methods
#pragma mark | Creators
+ (CCInclusiveOrExpressionNode *)inclusiveOrExpressionNodeWithExclusiveOrExpression:(CCExclusiveOrExpressionNode *)exclusiveOrExpression
                                                              inclusiveOrExpression:(CCInclusiveOrExpressionNode *)inclusiveOrExpression
{
    CCInclusiveOrExpressionNode *result = [self new];
    [result setExclusiveOrExpression:exclusiveOrExpression];
    [result setInclusiveOrExpression:inclusiveOrExpression];
    return result;
}

@end
