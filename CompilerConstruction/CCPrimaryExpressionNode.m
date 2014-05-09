//
//  CCPrimaryExpressionNode.m
//  CompilerConstruction
//
//  Created by Thorsten Kober on 09.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCPrimaryExpressionNode.h"


@implementation CCPrimaryExpressionNode


#pragma mark - Public Methods
#pragma mark | Creators
+ (CCPrimaryExpressionNode *)primaryExpressionNodeWithIdentifier:(CCIdentifierNode *)identifier
{
    CCPrimaryExpressionNode *result = [self new];
    [result setIdentifier:identifier];
    return result;
}


+ (CCPrimaryExpressionNode *)primaryExpressionNodeWithConstant:(CCConstNode *)constant
{
    CCPrimaryExpressionNode *result = [self new];
    [result setConstant:constant];
    return result;
}


+ (CCPrimaryExpressionNode *)primaryExpressionNodeWithString:(CCStringNode *)string
{
    CCPrimaryExpressionNode *result = [self new];
    [result setString:string];
    return result;
}


+ (CCPrimaryExpressionNode *)primaryExpressionNodeWithExpression:(CCExpressionNode *)expression
{
    CCPrimaryExpressionNode *result = [self new];
    [result setExpression:expression];
    return result;
}

@end
