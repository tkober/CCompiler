//
//  CCExpressionStatementNode.m
//  CompilerConstruction
//
//  Created by Thorsten Kober on 08.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCExpressionStatementNode.h"


@implementation CCExpressionStatementNode


#pragma mark - Public Methods
#pragma mark | Creators
+ (CCExpressionStatementNode *)expressionStatementNodeWithExpression:(CCExpressionNode *)expression
{
    CCExpressionStatementNode *result = [[self alloc] init];
    [result setExpression:expression];
    return result;
}

@end
