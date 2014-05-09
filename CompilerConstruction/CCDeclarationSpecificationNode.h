//
//  CCDeclarationSpecificationNode.h
//  CompilerConstruction
//
//  Created by Thorsten Kober on 08.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCSyntaxNode.h"


@class CCTypeSpecificationNode;


#pragma mark - CCDeclarationSpecificationNode
@interface CCDeclarationSpecificationNode : CCSyntaxNode
@property (strong, nonatomic) CCDeclarationSpecificationNode *declarationSpecification;
@property (strong, nonatomic) CCTypeSpecificationNode *typeSpecification;


@end
