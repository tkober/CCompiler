//
//  CCLogicalAndExpressionNode.h
//  CompilerConstruction
//
//  Created by Thorsten Kober on 09.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCSyntaxNode.h"


@class CCInclusiveOrExpressionNode;


#pragma mark - CCLogicalAndExpressionNode
@interface CCLogicalAndExpressionNode : CCSyntaxNode
@property (strong, nonatomic) CCInclusiveOrExpressionNode *inclusiveOrExpression;
@property (strong, nonatomic) CCLogicalAndExpressionNode *logicalAndExpression;


#pragma mark | Creators
+ (CCLogicalAndExpressionNode *)logicalAndExpressionNodeWithInclusiveOrExpression:(CCInclusiveOrExpressionNode *)inclusiveOrExpression
                                                             logicalAndExpression:(CCLogicalAndExpressionNode *)logicalAndExpression;

@end
