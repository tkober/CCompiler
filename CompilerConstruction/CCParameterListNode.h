//
//  CCParameterListNode.h
//  CompilerConstruction
//
//  Created by Thorsten Kober on 09.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCSyntaxNode.h"


@class CCParameterDeclarationNode;


#pragma mark - CCParameterListNode
@interface CCParameterListNode : CCSyntaxNode
@property (strong, nonatomic) CCParameterDeclarationNode *parameterDeclaration;
@property (strong, nonatomic) CCParameterListNode *parameterList;


#pragma mark | Creators
+ (CCParameterListNode *)parameterListNodeWithParameterDeclaration:(CCParameterDeclarationNode *)parameterDeclaration
                                                     parameterList:(CCParameterListNode *)parameterList;


@end
