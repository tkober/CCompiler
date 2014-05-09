//
//  CCAssignmentExpressionNode.m
//  CompilerConstruction
//
//  Created by Thorsten Kober on 09.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCAssignmentExpressionNode.h"


@implementation CCAssignmentExpressionNode


#pragma mark - Public Methods
#pragma mark | Creators
+ (CCAssignmentExpressionNode *)assignmentExpressionNodeWithConditionalExpression:(CCConditionalExpressionNode *)conditionalExpression
{
    CCAssignmentExpressionNode *result = [self new];
    [result setConditionalExpression:conditionalExpression];
    return result;
}


+ (CCAssignmentExpressionNode *)assignmentExpressionNodeWithUnaryExpression:(CCUnaryExpressionNode *)unaryExpression
                                                         assignmentOperator:(CCAssignmentOperatorNode *)assignmentOperator
                                                       assignmentExpression:(CCAssignmentExpressionNode *)assignmentExpression
{
    CCAssignmentExpressionNode *result = [self new];
    [result setUnaryExpression:unaryExpression];
    [result setAssignmentOperator:assignmentOperator];
    [result setAssignmentExpression:assignmentExpression];
    return result;
}

@end
