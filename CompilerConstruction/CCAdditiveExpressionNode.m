//
//  CCAdditiveExpressionNode.m
//  CompilerConstruction
//
//  Created by Thorsten Kober on 09.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCAdditiveExpressionNode.h"
#import "CCSyntaxNode+Private.h"
#import "CCMultiplicativeExpressionNode.h"
#import "CCAdditiveOperatorNode.h"


@implementation CCAdditiveExpressionNode


#pragma mark - Customized Getters
- (NSString *)ruleName
{
    return NSStringFromClass([self class]);
}



#pragma mark - Public Methods
#pragma mark | Creators
+ (CCAdditiveExpressionNode *)additiveExpressionNodeWithMultiplicativeExpression:(CCMultiplicativeExpressionNode *)multiplicativeExpression
                                                                additiveOperator:(CCAdditiveOperatorNode *)additiveOperator
                                                              additiveExpression:(CCAdditiveExpressionNode *)additiveExpression
{
    CCAdditiveExpressionNode *result = [self new];
    [result setMultiplicativeExpression:multiplicativeExpression];
    [result setAdditiveOperator:additiveOperator];
    [result setAdditiveExpression:additiveExpression];
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
