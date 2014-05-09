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
@property (strong, nonatomic) CCDeclarationSpecificationNode *declarationSpecification;
@property (strong, nonatomic) CCDeclaratorNode *declarator;
@property (strong, nonatomic) CCDeclarationListNode *declarationList;
@property (strong, nonatomic) CCCompoundStatementNode *compoundStatement;

@end
