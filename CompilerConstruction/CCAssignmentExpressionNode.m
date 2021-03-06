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
    return @"assignment_expression";
}



#pragma mark - Public Methods
#pragma mark | Optimization
- (CCSyntaxNode *)optimize:(id<CCOutput>)output
{
    [self setConditionalExpression:[self.conditionalExpression optimize:output]];
    [self setUnaryExpression:[self.unaryExpression optimize:output]];
    [self setAssignmentOperator:[self.assignmentOperator optimize:output]];
    [self setAssignmentExpression:[self.assignmentExpression optimize:output]];
    if (self.conditionalExpression &&
        !self.unaryExpression &&
        !self.assignmentOperator &&
        !self.assignmentExpression) {
        [self printRemovedSelfWarningToOutput:output];
        return self.conditionalExpression;
    }
    return self;
}


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
    if (self.conditionalExpression) {
        [self.conditionalExpression printToOutput:output
                                      indentLevel:indentLevel];
        return;
    }
    [self.unaryExpression printToOutput:output
                            indentLevel:indentLevel];
    PRINT_EMPTY_LINE(output, indentLevel);
    [self.assignmentOperator printToOutput:output
                               indentLevel:indentLevel];
    PRINT_EMPTY_LINE(output, indentLevel);
    [self.assignmentExpression printToOutput:output
                                 indentLevel:indentLevel];
}

@end
