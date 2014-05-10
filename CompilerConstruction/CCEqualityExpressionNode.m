//
//  CCEqualityExpressionNode.m
//  CompilerConstruction
//
//  Created by Thorsten Kober on 09.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCEqualityExpressionNode.h"
#import "CCSyntaxNode+Private.h"


@implementation CCEqualityExpressionNode


#pragma mark - Customized Getters
- (NSString *)ruleName
{
    return NSStringFromClass([self class]);
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
}

@end
