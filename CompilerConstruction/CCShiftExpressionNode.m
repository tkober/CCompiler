//
//  CCShiftExpressionNode.m
//  CompilerConstruction
//
//  Created by Thorsten Kober on 09.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCShiftExpressionNode.h"
#import "CCSyntaxNode+Private.h"
#import "CCAdditiveExpressionNode.h"
#import "CCShiftOperatorNode.h"


@implementation CCShiftExpressionNode


#pragma mark - Customized Getters
- (NSString *)ruleName
{
    return @"shift_expression";
}



#pragma mark - Public Methods
#pragma mark | Optimization
- (CCSyntaxNode *)optimize
{
    return self;
}


#pragma mark | Creators
+ (CCShiftExpressionNode *)shiftExpressionNodeWithAdditiveExpression:(CCAdditiveExpressionNode *)additiveExpression
                                                       shiftOperator:(CCShiftOperatorNode *)shiftOperator
                                                     shiftExpression:(CCShiftExpressionNode *)shiftExpression
{
    CCShiftExpressionNode *result = [self new];
    [result setAdditiveExpression:additiveExpression];
    [result setShiftOperator:shiftOperator];
    [result setShiftExpression:shiftExpression];
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
    [self.shiftExpression printToOutput:output
                            indentLevel:indentLevel];
    if (self.shiftExpression &&
        self.shiftOperator) {
        PRINT_EMPTY_LINE(output, indentLevel);
    }
    [self.shiftOperator printToOutput:output
                          indentLevel:indentLevel];
    if (self.shiftOperator &&
        self.additiveExpression) {
        PRINT_EMPTY_LINE(output, indentLevel);
    }
    [self.additiveExpression printToOutput:output
                               indentLevel:indentLevel];
}

@end
