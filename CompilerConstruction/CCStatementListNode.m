//
//  CCStatementListNode.m
//  CompilerConstruction
//
//  Created by Thorsten Kober on 08.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCStatementListNode.h"
#import "CCSyntaxNode+Private.h"
#import "CCStatementNode.h"


@implementation CCStatementListNode


#pragma mark - Customized Getters
- (NSString *)ruleName
{
    return @"statement_list";
}



#pragma mark - Public Methods
#pragma mark | Optimization
- (CCSyntaxNode *)optimize:(id<CCOutput>)output
{
    [self setStatement:[self.statement optimize:output]];
    [self setStatementList:[self.statementList optimize:output]];
    if (self.statement &&
        !self.statementList) {
        [self printRemovedSelfWarningToOutput:output];
        return self.statement;
    } else if (self.statementList &&
               !self.statement) {
        [self printRemovedSelfWarningToOutput:output];
        return self.statementList;
    }
    return self;
}


#pragma mark | Creators
+ (CCStatementListNode *)statementListNodeWithStatementList:(CCStatementListNode *)statementList
                                                  statement:(CCStatementNode *)statement
{
    CCStatementListNode *result = [[self alloc] init];
    [result setStatementList:statementList];
    [result setStatement:statement];
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
    [self.statementList printToOutput:output
                          indentLevel:indentLevel];
    if (self.statementList &&
        self.statement) {
        [self printLine:@""
               toOutput:output
            indentLevel:indentLevel];
    }
    [self.statement printToOutput:output
                      indentLevel:indentLevel];
}

@end
