//
//  CCSelectionStatementNode.h
//  CompilerConstruction
//
//  Created by Thorsten Kober on 08.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCSyntaxNode.h"


@class CCExpressionNode;
@class CCStatementNode;


#pragma mark - CCSelectionStatementNode
@interface CCSelectionStatementNode : CCSyntaxNode
@property (strong, nonatomic) CCExpressionNode *expression;
@property (strong, nonatomic) CCStatementNode *thenStatement;
@property (strong, nonatomic) CCStatementNode *elseStatement;


@end
