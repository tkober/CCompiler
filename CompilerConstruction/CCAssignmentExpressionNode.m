//
//  CCAssignmentExpressionNode.m
//  CompilerConstruction
//
//  Created by Thorsten Kober on 09.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCAssignmentExpressionNode.h"
#import "CCSyntaxNode+Private.h"
#import "CCConditionalExpressionNode.h"
#import "CCUnaryExpressionNode.h"
#import "CCAssignmentOperatorNode.h"


@implementation CCAssignmentExpressionNode


#pragma mark - Customized Getters
- (NSString *)ruleName
{
    return NSStringFromClass([self class]);
}



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


#pragma mark | Printing
- (void)printToOutput:(id<CCOutput>)output
          indentLevel:(NSUInteger)indentLevel
{
    [super printLine:[NSString stringWithFormat:@"%@%@", (indentLevel > 0 ? @"--" : @""), self.ruleName]
            toOutput:output
         indentLevel:indentLevel];
    indentLevel++;
}

@end
