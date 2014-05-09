//
//  CCExpressionNode.m
//  CompilerConstruction
//
//  Created by Thorsten Kober on 09.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCExpressionNode.h"


@implementation CCExpressionNode


#pragma mark - Public Methods
#pragma mark | Creators
+ (CCExpressionNode *)expressionNodeWithAssignmentExpression:(CCAssignmentExpressionNode *)assignmentExpression
                                                  expression:(CCExpressionNode *)expression
{
    CCExpressionNode *result = [self new];
    [result setAssignmentExpression:assignmentExpression];
    [result setExpression:expression];
    return result;
}

@end
