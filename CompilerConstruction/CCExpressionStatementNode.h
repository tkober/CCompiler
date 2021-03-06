//
//  CCExpressionStatementNode.h
//  CompilerConstruction
//
//  Created by Thorsten Kober on 08.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCSyntaxNode.h"


@class CCExpressionNode;


#pragma mark - CCExpressionStatementNode
@interface CCExpressionStatementNode : CCSyntaxNode
@property (strong, nonatomic) CCSyntaxNode *expression;


#pragma mark | Creators
+ (CCExpressionStatementNode *)expressionStatementNodeWithExpression:(CCExpressionNode *)expression;


@end
