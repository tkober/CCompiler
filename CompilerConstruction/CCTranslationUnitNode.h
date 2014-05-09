//
//  CCTranslationUnitNode.h
//  CompilerConstruction
//
//  Created by Thorsten Kober on 08.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCSyntaxNode.h"


@class CCExternalDeclarationNode;


#pragma mark - CCTranslationUnitNode
@interface CCTranslationUnitNode : CCSyntaxNode
@property (strong, nonatomic) CCTranslationUnitNode *translationUnit;
@property (strong, nonatomic) CCExternalDeclarationNode *externalDeclaration;

@end
