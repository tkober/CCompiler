//
//  CCInitDeclaratorListNode.h
//  CompilerConstruction
//
//  Created by Thorsten Kober on 08.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCSyntaxNode.h"


@class CCInitDeclaratorNode;


#pragma mark - CCInitDeclaratorListNode
@interface CCInitDeclaratorListNode : CCSyntaxNode
@property (strong, nonatomic) CCSyntaxNode *initDeclaratorList;
@property (strong, nonatomic) CCSyntaxNode *initializerDeclarator;


#pragma mark | Creators
+ (CCInitDeclaratorListNode *)initDeclaratorListNodeWithInitDeclaratorList:(CCInitDeclaratorListNode *)initDeclaratorList
                                                            initDeclarator:(CCInitDeclaratorNode *)initDeclarator;


@end
