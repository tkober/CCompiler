//
//  CCRelationalExpressionNode.m
//  CompilerConstruction
//
//  Created by Thorsten Kober on 09.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCRelationalExpressionNode.h"
#import "CCSyntaxNode+Private.h"
#import "CCShiftExpressionNode.h"
#import "CCCompareOperatorNode.h"


@implementation CCRelationalExpressionNode


#pragma mark - Customized Getters
- (NSString *)ruleName
{
    return @"relational_expression";
}



#pragma mark - Public Methods
#pragma mark | Optimization
- (CCSyntaxNode *)optimize
{
    return self;
}


#pragma mark | Creators
+ (CCRelationalExpressionNode *)relationalExpressionNodeWithShiftExpression:(CCShiftExpressionNode *)shiftExpression
                                                            compareOperator:(CCCompareOperatorNode *)compareOperator
                                                       relationalExpression:(CCRelationalExpressionNode *)relationalExpression
{
    CCRelationalExpressionNode *result = [self new];
    [result setShiftExpression:shiftExpression];
    [result setComareOperator:compareOperator];
    [result setRelationalExpression:relationalExpression];
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

    [self.relationalExpression printToOutput:output
                                 indentLevel:indentLevel];
    if (self.relationalExpression &&
        self.comareOperator) {
        PRINT_EMPTY_LINE(output, indentLevel);
    }
    [self.comareOperator printToOutput:output
                           indentLevel:indentLevel];
    if (self.comareOperator &&
        self.shiftExpression) {
        PRINT_EMPTY_LINE(output, indentLevel);
    }
    [self.shiftExpression printToOutput:output
                            indentLevel:indentLevel];
}

@end
