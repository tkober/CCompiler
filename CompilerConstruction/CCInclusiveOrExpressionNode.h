//
//  CCInclusiveOrExpressionNode.h
//  CompilerConstruction
//
//  Created by Thorsten Kober on 09.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCSyntaxNode.h"


@class CCExclusiveOrExpressionNode;


#pragma mark - CCInclusiveOrExpressionNode
@interface CCInclusiveOrExpressionNode : CCSyntaxNode
@property (strong, nonatomic) CCSyntaxNode *exclusiveOrExpression;
@property (strong, nonatomic) CCSyntaxNode *inclusiveOrExpression;


#pragma mark | Creators
+ (CCInclusiveOrExpressionNode *)inclusiveOrExpressionNodeWithExclusiveOrExpression:(CCExclusiveOrExpressionNode *)exclusiveOrExpression
                                                              inclusiveOrExpression:(CCInclusiveOrExpressionNode *)inclusiveOrExpression;

@end
