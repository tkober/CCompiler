//
//  CCConditionalExpressionNode.m
//  CompilerConstruction
//
//  Created by Thorsten Kober on 09.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCConditionalExpressionNode.h"
#import "CCSyntaxNode+Private.h"
#import "CCLogicalOrExpressionNode.h"
#import "CCExpressionNode.h"


@implementation CCConditionalExpressionNode


#pragma mark - Customized Getters
- (NSString *)ruleName
{
    return NSStringFromClass([self class]);
}



#pragma mark - Public Methods
#pragma mark | Creators
+ (CCConditionalExpressionNode *)conditionalExpressionNodeWithLogicalOrExpression:(CCLogicalOrExpressionNode *)logicalOrExpression
                                                                       expression:(CCExpressionNode *)expression
                                                            conditionalExpression:(CCConditionalExpressionNode *)conditionalExpression
{
    CCConditionalExpressionNode *result = [self new];
    [result setLogicalOrExpression:logicalOrExpression];
    [result setExpression:expression];
    [result setConditionalExpression:conditionalExpression];
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
