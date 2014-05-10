//
//  CCExpressionStatementNode.m
//  CompilerConstruction
//
//  Created by Thorsten Kober on 08.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCExpressionStatementNode.h"
#import "CCSyntaxNode+Private.h"
#import "CCExpressionNode.h"


@implementation CCExpressionStatementNode


#pragma mark - Customized Getters
- (NSString *)ruleName
{
    return @"expression_statement";
}



#pragma mark - Public Methods
#pragma mark | Creators
+ (CCExpressionStatementNode *)expressionStatementNodeWithExpression:(CCExpressionNode *)expression
{
    CCExpressionStatementNode *result = [[self alloc] init];
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
    [self.expression printToOutput:output
                       indentLevel:indentLevel];
}

@end
