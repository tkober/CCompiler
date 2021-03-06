//
//  CCExternalDeclarationNode.h
//  CompilerConstruction
//
//  Created by Thorsten Kober on 08.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCSyntaxNode.h"


@class CCFunctionDefinitionNode;
@class CCDeclarationNode;


#pragma mark - CCExternalDeclarationNode
@interface CCExternalDeclarationNode : CCSyntaxNode
@property (strong, nonatomic) CCSyntaxNode *functionDefinition;
@property (strong, nonatomic) CCSyntaxNode *declaration;


#pragma mark | Creators
+ (CCExternalDeclarationNode *)functionDefinition:(CCFunctionDefinitionNode *)functionDefinition;
+ (CCExternalDeclarationNode *)declaration:(CCDeclarationNode *)declaration;

@end
