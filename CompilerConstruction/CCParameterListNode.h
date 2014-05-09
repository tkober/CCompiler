//
//  CCParameterListNode.h
//  CompilerConstruction
//
//  Created by Thorsten Kober on 09.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCSyntaxNode.h"


@class CCParameterDeclaration;


#pragma mark - CCParameterListNode
@interface CCParameterListNode : CCSyntaxNode
@property (strong, nonatomic) CCParameterDeclaration *parameterDeclaration;
@property (strong, nonatomic) CCParameterListNode *parameterList;


#pragma mark | Creators
+ (CCParameterListNode *)parameterListNodeWithParameterDeclaration:(CCParameterDeclaration *)parameterDeclaration
                                                     parameterList:(CCParameterListNode *)parameterList;


@end
