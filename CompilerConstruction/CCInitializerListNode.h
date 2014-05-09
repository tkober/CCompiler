//
//  CCInitializerListNode.h
//  CompilerConstruction
//
//  Created by Thorsten Kober on 09.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCSyntaxNode.h"


@class CCInitializerNode;


#pragma mark - CCInitializerListNode
@interface CCInitializerListNode : CCSyntaxNode
@property (strong, nonatomic) CCInitializerNode *initializer;
@property (strong, nonatomic) CCInitializerListNode *initializerList;


#pragma mark | Creators
+ (CCInitializerListNode *)initializerListNodeWithInitializer:(CCInitializerNode *)initializer
                                              initializerList:(CCInitializerListNode *)initializerList;


@end
