//
//  CCInitDeclaratorNode.h
//  CompilerConstruction
//
//  Created by Thorsten Kober on 08.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCSyntaxNode.h"


@class CCDeclaratorNode;
@class CCInitializerNode;


#pragma mark - CCInitDeclaratorNode
@interface CCInitDeclaratorNode : CCSyntaxNode
@property (strong, nonatomic) CCDeclaratorNode *declarator;
@property (strong, nonatomic) CCInitializerNode *initializer;


#pragma mark | Creators


@end
