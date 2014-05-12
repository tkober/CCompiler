//
//  CCIdentifierNode.h
//  CompilerConstruction
//
//  Created by Thorsten Kober on 09.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCSyntaxNode.h"


@class CCSymbolReference;


#pragma mark - CCIdentifierNode
@interface CCIdentifierNode : CCSyntaxNode
@property (strong, nonatomic) CCSymbolReference *reference;
@property (strong, nonatomic) NSNumber *hash;
@property (assign, nonatomic) BOOL alreadyDeclared;


#pragma mark | Creators
+ (CCIdentifierNode *)identifierNodeWithSymbolReference:(CCSymbolReference *)reference;

@end
