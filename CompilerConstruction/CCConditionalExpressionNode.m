//
//  CCConditionalExpressionNode.m
//  CompilerConstruction
//
//  Created by Thorsten Kober on 09.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCConditionalExpressionNode.h"


@implementation CCConditionalExpressionNode


#pragma mark - Public Methods
#pragma mark | Creators
+ (CCConditionalExpressionNode *)conditionalExpressionNodeWithLogicalOrExpression:(CCLogicalOrExpressionNode *)logicalOrExpression
                                                                       expression:(CCExpressionNode *)expression
                                                            conditionalExpression:(CCConditionalExpressionNode *)conditionalExpression
{
    CCConditionalExpressionNode *result = [self new];
    [result setLogicalOrExpression:logicalOrExpression];
    [result setExpression:expression];
    [result setConditionalExpression:conditionalExpression];
    return result;
}

@end
