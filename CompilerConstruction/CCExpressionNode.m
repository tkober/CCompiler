//
//  CCExpressionNode.m
//  CompilerConstruction
//
//  Created by Thorsten Kober on 09.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCExpressionNode.h"
#import "CCSyntaxNode+Private.h"


@implementation CCExpressionNode


#pragma mark - Customized Getters
- (NSString *)ruleName
{
    return NSStringFromClass([self class]);
}



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
