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
@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) CCSymbolReference *reference;


#pragma mark | Creators
+ (CCIdentifierNode *)identifierNodeWithName:(char *)name
                                   reference:(CCSymbolReference *)reference;

@end
