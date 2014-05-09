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
@property (strong, nonatomic) CCIdentifierNode *identifier;
@property (strong, nonatomic) CCDeclaratorNode *delcarator;
@property (strong, nonatomic) CCParameterListNode *parameterList;


@end
