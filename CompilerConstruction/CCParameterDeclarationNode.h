//
//  CCParameterDeclarationNode.h
//  CompilerConstruction
//
//  Created by Thorsten Kober on 09.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCSyntaxNode.h"


@class CCDeclarationSpecificationNode;
@class CCDeclaratorNode;


#pragma mark - CCParameterDeclarationNode
@interface CCParameterDeclarationNode : CCSyntaxNode
@property (strong, nonatomic) CCSyntaxNode *declarationSpecification;
@property (strong, nonatomic) CCSyntaxNode *declarator;


#pragma mark | Creators
+ (CCParameterDeclarationNode *)parameterDeclarationNodeWithDeclarationSpecification:(CCDeclarationSpecificationNode *)declarationSepcification
                                                                          declarator:(CCDeclaratorNode *)declarator;


@end
