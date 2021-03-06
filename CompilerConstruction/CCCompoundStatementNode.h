//
//  CCCompoundStatementNode.h
//  CompilerConstruction
//
//  Created by Thorsten Kober on 08.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCSyntaxNode.h"


@class CCDeclarationListNode;
@class CCStatementListNode;


#pragma mark - CCCompoundStatementNode
@interface CCCompoundStatementNode : CCSyntaxNode
@property (strong, nonatomic) CCSyntaxNode *declarationList;
@property (strong, nonatomic) CCSyntaxNode *statementList;


#pragma mark | Creators
+ (CCCompoundStatementNode *)compoundStatemetnNodeWithDeclarationList:(CCDeclarationListNode *)declarationList
                                                        statementList:(CCStatementListNode *)statementList;


@end
