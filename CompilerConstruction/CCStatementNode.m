//
//  CCStatementNode.m
//  CompilerConstruction
//
//  Created by Thorsten Kober on 08.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCStatementNode.h"
#import "CCSyntaxNode+Private.h"
#import "CCLabeledStatementNode.h"
#import "CCExpressionStatementNode.h"
#import "CCCompoundStatementNode.h"
#import "CCSelectionStatementNode.h"
#import "CCIterationStatementNode.h"
#import "CCJumpStatementNode.h"


@implementation CCStatementNode


#pragma mark - Customized Getters
- (NSString *)ruleName
{
    return @"statement";
}



#pragma mark - Public Methods
#pragma mark | Optimization
- (CCSyntaxNode *)optimize:(id<CCOutput>)output
{
    [self setLabeledStatement:[self.labeledStatement optimize:output]];
    [self setExpressionStatement:[self.expressionStatement optimize:output]];
    [self setCompoundStatement:[self.compoundStatement optimize:output]];
    [self setSelectionStatement:[self.selectionStatement optimize:output]];
    [self setIterationStatement:[self.iterationStatement optimize:output]];
    [self setJumpStatement:[self.jumpStatement optimize:output]];
    if (self.labeledStatement &&
        !self.expressionStatement &&
        !self.compoundStatement &&
        !self.selectionStatement &&
        !self.iterationStatement &&
        !self.jumpStatement) {
        [self printRemovedSelfWarningToOutput:output];
        return self.labeledStatement;
    }
    if (!self.labeledStatement &&
        self.expressionStatement &&
        !self.compoundStatement &&
        !self.selectionStatement &&
        !self.iterationStatement &&
        !self.jumpStatement) {
        [self printRemovedSelfWarningToOutput:output];
        return self.expressionStatement;
    }
    if (!self.labeledStatement &&
        !self.expressionStatement &&
        self.compoundStatement &&
        !self.selectionStatement &&
        !self.iterationStatement &&
        !self.jumpStatement) {
        [self printRemovedSelfWarningToOutput:output];
        return self.compoundStatement;
    }
    if (!self.labeledStatement &&
        !self.expressionStatement &&
        !self.compoundStatement &&
        self.selectionStatement &&
        !self.iterationStatement &&
        !self.jumpStatement) {
        [self printRemovedSelfWarningToOutput:output];
        return self.selectionStatement;
    }
    if (!self.labeledStatement &&
        !self.expressionStatement &&
        !self.compoundStatement &&
        !self.selectionStatement &&
        self.iterationStatement &&
        !self.jumpStatement) {
        [self printRemovedSelfWarningToOutput:output];
        return self.iterationStatement;
    }
    if (!self.labeledStatement &&
        !self.expressionStatement &&
        !self.compoundStatement &&
        !self.selectionStatement &&
        !self.iterationStatement &&
        self.jumpStatement) {
        [self printRemovedSelfWarningToOutput:output];
        return self.jumpStatement;
    }
    if (!self.labeledStatement &&
        !self.expressionStatement &&
        !self.compoundStatement &&
        !self.selectionStatement &&
        !self.iterationStatement &&
        !self.jumpStatement) {
        [self printRemovedSelfWarningToOutput:output];
        return nil;
    }
    return self;
}


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
    indentLevel++;
    [self.labeledStatement printToOutput:output
                             indentLevel:indentLevel];
    [self.expressionStatement printToOutput:output
                                indentLevel:indentLevel];
    [self.compoundStatement printToOutput:output
                              indentLevel:indentLevel];
    [self.selectionStatement printToOutput:output
                               indentLevel:indentLevel];
    [self.iterationStatement printToOutput:output
                               indentLevel:indentLevel];
    [self.jumpStatement printToOutput:output
                          indentLevel:indentLevel];
}

@end
