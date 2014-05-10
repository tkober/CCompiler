//
//  CCCompoundStatementNode.m
//  CompilerConstruction
//
//  Created by Thorsten Kober on 08.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCCompoundStatementNode.h"
#import "CCSyntaxNode+Private.h"


@implementation CCCompoundStatementNode


#pragma mark - Customized Getters
- (NSString *)ruleName
{
    return NSStringFromClass([self class]);
}



#pragma mark - Public Methods
#pragma mark | Creators
+ (CCCompoundStatementNode *)compoundStatemetnNodeWithDeclarationList:(CCDeclarationListNode *)declarationList
                                                        statementList:(CCStatementListNode *)statementList
{
    CCCompoundStatementNode *result;
    [result setDeclarationList:declarationList];
    [result setStatementList:statementList];
    return result;
}


#pragma mark | Printing
- (void)printToOutput:(id<CCOutput>)output
          indentLevel:(NSUInteger)indentLevel
{
    [super printLine:self.ruleName
            toOutput:output
         indentLevel:indentLevel];
}

@end
