//
//  CCConditionalExpressionNode.h
//  CompilerConstruction
//
//  Created by Thorsten Kober on 09.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCSyntaxNode.h"


@class CCLogicalOrExpressionNode;
@class CCExpressionNode;


#pragma mark - CCConditionalExpressionNode
@interface CCConditionalExpressionNode : CCSyntaxNode
@property (strong, nonatomic) CCLogicalOrExpressionNode *logicalOrExpression;
@property (strong, nonatomic) CCExpressionNode *expression;
@property (strong, nonatomic) CCConditionalExpressionNode *conditionalExpression;


#pragma mark | Creators


@end
