//
//  CCDeclarationListNode.h
//  CompilerConstruction
//
//  Created by Thorsten Kober on 08.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCSyntaxNode.h"


@class CCDeclarationNode;


#pragma mark - CCDeclarationListNode
@interface CCDeclarationListNode : CCSyntaxNode
@property (strong, nonatomic) CCSyntaxNode *declarationList;
@property (strong, nonatomic) CCSyntaxNode *declaration;


#pragma mark | Creators
+ (CCDeclarationListNode *)declarationListNodeWithDeclarationList:(CCDeclarationListNode *)declarationList
                                                      declaration:(CCDeclarationNode *)declaration;

@end
