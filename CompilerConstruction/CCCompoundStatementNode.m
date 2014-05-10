//
//  CCCompoundStatementNode.m
//  CompilerConstruction
//
//  Created by Thorsten Kober on 08.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCCompoundStatementNode.h"
#import "CCSyntaxNode+Private.h"
#import "CCDeclarationListNode.h"
#import "CCStatementListNode.h"


@implementation CCCompoundStatementNode


#pragma mark - Customized Getters
- (NSString *)ruleName
{
    return @"compound_statement";
}



#pragma mark - Public Methods
#pragma mark | Creators
+ (CCCompoundStatementNode *)compoundStatemetnNodeWithDeclarationList:(CCDeclarationListNode *)declarationList
                                                        statementList:(CCStatementListNode *)statementList
{
    CCCompoundStatementNode *result = [self new];
    [result setDeclarationList:declarationList];
    [result setStatementList:statementList];
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
    [self.declarationList printToOutput:output indentLevel:indentLevel];
    if (self.declarationList &&
        self.statementList) {
        [self printLine:@""
               toOutput:output
            indentLevel:indentLevel];
    }
    [self.statementList printToOutput:output
                          indentLevel:indentLevel];
}

@end
