//
//  CCCompoundStatementNode.m
//  CompilerConstruction
//
//  Created by Thorsten Kober on 08.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCCompoundStatementNode.h"


@implementation CCCompoundStatementNode


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

@end
