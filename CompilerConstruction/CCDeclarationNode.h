//
//  CCDeclarationNode.h
//  CompilerConstruction
//
//  Created by Thorsten Kober on 08.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCSyntaxNode.h"


@class CCDeclarationSpecificationNode;
@class CCInitDeclaratorListNode;


#pragma mark - CCDeclarationNode
@interface CCDeclarationNode : CCSyntaxNode
@property (strong, nonatomic) CCDeclarationSpecificationNode *declarationSpecification;
@property (strong, nonatomic) CCInitDeclaratorListNode *initializerDeclaratorList;


#pragma mark | Creators
+ (CCDeclarationNode *)declarationNodeWithDeclarationSpecification:(CCDeclarationSpecificationNode *)declarationSpecification
                                                initDeclaratorList:(CCInitDeclaratorListNode *)initDeclaratorList;

@end
