//
//  CCLogicalOrExpression.h
//  CompilerConstruction
//
//  Created by Thorsten Kober on 09.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCSyntaxNode.h"


@class CCLogicalAndExpressionNode;


#pragma mark - CCLogicalOrExpressionNode
@interface CCLogicalOrExpressionNode : CCSyntaxNode
@property (strong, nonatomic) CCSyntaxNode *logicalAndExpression;
@property (strong, nonatomic) CCSyntaxNode *logicalOrExpression;


#pragma mark | Creators
+ (CCLogicalOrExpressionNode *)logicalOrExpressionNodeWithLogicalAndExpression:(CCLogicalAndExpressionNode *)logicalAndExpression
                                                           logicalOrExpression:(CCLogicalOrExpressionNode *)logicalOrExpression;

@end
