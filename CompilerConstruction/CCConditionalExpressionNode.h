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
@property (strong, nonatomic) CCSyntaxNode *logicalOrExpression;
@property (strong, nonatomic) CCSyntaxNode *expression;
@property (strong, nonatomic) CCSyntaxNode *conditionalExpression;


#pragma mark | Creators
+ (CCConditionalExpressionNode *)conditionalExpressionNodeWithLogicalOrExpression:(CCLogicalOrExpressionNode *)logicalOrExpression
                                                                       expression:(CCExpressionNode *)expression
                                                            conditionalExpression:(CCConditionalExpressionNode *)conditionalExpression;


@end
