//
//  CCExclusiveOrExpressionNode.h
//  CompilerConstruction
//
//  Created by Thorsten Kober on 09.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCSyntaxNode.h"


@class CCAndExpressionNode;


#pragma mark - CCExclusiveOrExpressionNode
@interface CCExclusiveOrExpressionNode : CCSyntaxNode
@property (strong, nonatomic) CCAndExpressionNode *andExpression;
@property (strong, nonatomic) CCExclusiveOrExpressionNode *exclusiveOrExpression;


#pragma mark | Creators
+ (CCExclusiveOrExpressionNode *)exclusiveOrExpressionNodeWithAndExpression:(CCAndExpressionNode *)andExpression
                                                      exclusiveOrExpression:(CCExclusiveOrExpressionNode *)exclusiveOrExpression;


@end
