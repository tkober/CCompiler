//
//  CCSelectionStatementNode.m
//  CompilerConstruction
//
//  Created by Thorsten Kober on 08.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCSelectionStatementNode.h"
#import "CCSyntaxNode+Private.h"
#import "CCExpressionNode.h"
#import "CCStatementNode.h"


@implementation CCSelectionStatementNode


#pragma mark - Customized Getters
- (NSString *)ruleName
{
    return @"selection_statement";
}



#pragma mark - Public Methods
#pragma mark | Optimization
- (CCSyntaxNode *)optimize:(id<CCOutput>)output
{
    [self setExpression:[self.expression optimize:output]];
    [self setThenStatement:[self.thenStatement optimize:output]];
    [self setElseStatement:[self.elseStatement optimize:output]];
    return self;
}


#pragma mark | Creators
+ (CCSelectionStatementNode *)selectionStatementNodeWithExpression:(CCExpressionNode *)expression
                                                     thenStatement:(CCStatementNode *)thenStatement
                                                     elseStatement:(CCStatementNode *)elseStatement
{
    CCSelectionStatementNode *result = [self new];
    [result setExpression:expression];
    [result setThenStatement:thenStatement];
    [result setElseStatement:elseStatement];
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
    [self printLine:@""
           toOutput:output
        indentLevel:indentLevel];
    [self.thenStatement printToOutput:output
                          indentLevel:indentLevel];
    if (self.elseStatement) {
        [self printLine:@""
               toOutput:output
            indentLevel:indentLevel];
        [self.elseStatement printToOutput:output
                              indentLevel:indentLevel];
    }
}

@end
