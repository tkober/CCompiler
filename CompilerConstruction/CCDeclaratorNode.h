//
//  CCDeclaratorNode.h
//  CompilerConstruction
//
//  Created by Thorsten Kober on 09.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCSyntaxNode.h"


@class CCParameterListNode;
@class CCIdentifierNode;


#pragma mark - CCDeclaratorNode
@interface CCDeclaratorNode : CCSyntaxNode
@property (strong, nonatomic) CCSyntaxNode *identifier;
@property (strong, nonatomic) CCSyntaxNode *delcarator;
@property (strong, nonatomic) CCSyntaxNode *parameterList;


#pragma mark | Creators
+ (CCDeclaratorNode *)declaratorNodeWithDeclarator:(CCDeclaratorNode *)declarator
                                        identifier:(CCIdentifierNode *)identifier
                                     parameterList:(CCParameterListNode *)parameterList;


@end
