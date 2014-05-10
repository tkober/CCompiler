//
//  CCLogicalOrExpression.m
//  CompilerConstruction
//
//  Created by Thorsten Kober on 09.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCLogicalOrExpressionNode.h"
#import "CCSyntaxNode+Private.h"
#import "CCLogicalAndExpressionNode.h"


@implementation CCLogicalOrExpressionNode


#pragma mark - Customized Getters
- (NSString *)ruleName
{
    return @"logical_or_expression";
}



#pragma mark - Public Methods
#pragma mark | Creators
+ (CCLogicalOrExpressionNode *)logicalOrExpressionNodeWithLogicalAndExpression:(CCLogicalAndExpressionNode *)logicalAndExpression
                                                           logicalOrExpression:(CCLogicalOrExpressionNode *)logicalOrExpression
{
    CCLogicalOrExpressionNode *result = [self new];
    [result setLogicalAndExpression:logicalAndExpression];
    [result setLogicalOrExpression:logicalOrExpression];
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
    [self.logicalOrExpression printToOutput:output
                                indentLevel:indentLevel];
    if (self.logicalOrExpression &&
        self.logicalAndExpression) {
        PRINT_EMPTY_LINE(output, indentLevel);
    }
    [self.logicalAndExpression printToOutput:output
                                 indentLevel:indentLevel];
}

@end
