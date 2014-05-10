//
//  CCStatementNode.m
//  CompilerConstruction
//
//  Created by Thorsten Kober on 08.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCStatementNode.h"
#import "CCSyntaxNode+Private.h"


@implementation CCStatementNode


#pragma mark - Customized Getters
- (NSString *)ruleName
{
    return NSStringFromClass([self class]);
}



#pragma mark - Public Methods
#pragma mark | Creators
+ (CCStatementNode *)statementNodeWithLabeledStatement:(CCLabeledStatementNode *)labeledStatement
{
    CCStatementNode *result = [[self alloc] init];
    [result setLabeledStatement:labeledStatement];
    return result;
}


+ (CCStatementNode *)statementNodeWithExpressionStatement:(CCExpressionStatementNode *)expressionStatement
{
    CCStatementNode *result = [[self alloc] init];
    [result setExpressionStatement:expressionStatement];
    return result;
}


+ (CCStatementNode *)statementNodeWithCompoundStatement:(CCCompoundStatementNode *)compoundStatement
{
    CCStatementNode *result = [[self alloc] init];
    [result setCompoundStatement:compoundStatement];
    return result;
}


+ (CCStatementNode *)statementNodeWithSelectionStatement:(CCSelectionStatementNode *)selectionStatement
{
    CCStatementNode *result = [[self alloc] init];
    [result setSelectionStatement:selectionStatement];
    return result;
}


+ (CCStatementNode *)statementNodeWithIterationStatement:(CCIterationStatementNode *)iterationStatement
{
    CCStatementNode *result = [[self alloc] init];
    [result setIterationStatement:iterationStatement];
    return result;
}


+ (CCStatementNode *)statementNodeWithJumpStatement:(CCJumpStatementNode *)jumpStatement
{
    CCStatementNode *result = [[self alloc] init];
    [result setJumpStatement:jumpStatement];
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
