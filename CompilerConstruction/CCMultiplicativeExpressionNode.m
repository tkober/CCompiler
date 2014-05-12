//
//  CCMultiplicativeExpressionNode.m
//  CompilerConstruction
//
//  Created by Thorsten Kober on 09.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCMultiplicativeExpressionNode.h"
#import "CCSyntaxNode+Private.h"
#import "CCMultiplicativeOperatorNode.h"
#import "CCUnaryExpressionNode.h"


@implementation CCMultiplicativeExpressionNode


#pragma mark - Customized Getters
- (NSString *)ruleName
{
    return @"multiplicative_expression";
}



#pragma mark - Public Methods
#pragma mark | Optimization
- (CCSyntaxNode *)optimize
{
    return self;
}


#pragma mark | Creators
+ (CCMultiplicativeExpressionNode *)multiplicativeExpressionNodeWithUnaryExpression:(CCUnaryExpressionNode *)unaryExpression
                                                             multiplicativeOperator:(CCMultiplicativeOperatorNode *)multiplicativeOperator
                                                           multiplicativeExpression:(CCMultiplicativeExpressionNode *)multiplicativeExpression
{
    CCMultiplicativeExpressionNode *result = [self new];
    [result setUnaryExpression:unaryExpression];
    [result setMultiplicativeOperator:multiplicativeOperator];
    [result setMultiplicativeExpression:multiplicativeExpression];
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
    [self.multiplicativeExpression printToOutput:output
                                     indentLevel:indentLevel];
    if (self.multiplicativeExpression &&
        self.multiplicativeOperator) {
        PRINT_EMPTY_LINE(output, indentLevel);
    }
    [self.multiplicativeOperator printToOutput:output
                                   indentLevel:indentLevel];
    if (self.multiplicativeOperator &&
        self.unaryExpression) {
        PRINT_EMPTY_LINE(output, indentLevel);
    }
    [self.unaryExpression printToOutput:output
                            indentLevel:indentLevel];
}

@end
