//
//  CCEqualityExpressionNode.m
//  CompilerConstruction
//
//  Created by Thorsten Kober on 09.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCEqualityExpressionNode.h"
#import "CCSyntaxNode+Private.h"
#import "CCRelationalExpressionNode.h"
#import "CCEqualityOperatorNode.h"


@implementation CCEqualityExpressionNode


#pragma mark - Customized Getters
- (NSString *)ruleName
{
    return @"equality_expression";
}



#pragma mark - Public Methods
#pragma mark | Creators
+ (CCEqualityExpressionNode *)equalityExpressionNodeWithRelationalExpression:(CCRelationalExpressionNode *)relationalExpression
                                                           equatlityOperator:(CCEqualityOperatorNode *)equalityOperator
                                                          equalityExpression:(CCEqualityExpressionNode *)equalityExpression
{
    CCEqualityExpressionNode *result = [self new];
    [result setRelationalExpression:relationalExpression];
    [result setEqualityOperator:equalityOperator];
    [result setEqualityExpression:equalityExpression];
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
    [self.equalityExpression printToOutput:output
                               indentLevel:indentLevel];
    if (self.equalityExpression &&
        self.equalityOperator) {
        PRINT_EMPTY_LINE(output, indentLevel);
    }
    [self.equalityOperator printToOutput:output
                             indentLevel:indentLevel];
    if (self.equalityOperator &&
        self.relationalExpression) {
        PRINT_EMPTY_LINE(output, indentLevel);
    }
    [self.relationalExpression printToOutput:output
                                 indentLevel:indentLevel];
}

@end
