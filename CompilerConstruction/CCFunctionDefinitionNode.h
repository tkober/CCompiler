//
//  CCFunctionDefinitionNode.h
//  CompilerConstruction
//
//  Created by Thorsten Kober on 08.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCSyntaxNode.h"


@class CCDeclarationSpecificationNode;
@class CCDeclaratorNode;
@class CCDeclarationListNode;
@class CCCompoundStatementNode;


#pragma mark - CCFunctionDefinitionNode
@interface CCFunctionDefinitionNode : CCSyntaxNode
@property (strong, nonatomic) CCSyntaxNode *declarationSpecification;
@property (strong, nonatomic) CCSyntaxNode *declarator;
@property (strong, nonatomic) CCSyntaxNode *declarationList;
@property (strong, nonatomic) CCSyntaxNode *compoundStatement;


#pragma mark | Creators
+ (CCFunctionDefinitionNode *)functionDefinitionWithDeclarationSpecification:(CCDeclarationSpecificationNode *)declarationSpecification
                                                                  declarator:(CCDeclaratorNode *)declarator
                                                             declarationList:(CCDeclarationListNode *)declarationList
                                                           compoundStatement:(CCCompoundStatementNode *)compoundStatement;


@end
