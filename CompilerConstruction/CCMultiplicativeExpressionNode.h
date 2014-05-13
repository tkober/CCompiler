//
//  CCMultiplicativeExpressionNode.h
//  CompilerConstruction
//
//  Created by Thorsten Kober on 09.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCSyntaxNode.h"


@class CCMultiplicativeOperatorNode;
@class CCUnaryExpressionNode;


#pragma mark - CCMultiplicativeExpressionNode
@interface CCMultiplicativeExpressionNode : CCSyntaxNode
@property (strong, nonatomic) CCSyntaxNode *unaryExpression;
@property (strong, nonatomic) CCSyntaxNode *multiplicativeOperator;
@property (strong, nonatomic) CCSyntaxNode *multiplicativeExpression;


#pragma mark | Creators
+ (CCMultiplicativeExpressionNode *)multiplicativeExpressionNodeWithUnaryExpression:(CCUnaryExpressionNode *)unaryExpression
                                                             multiplicativeOperator:(CCMultiplicativeOperatorNode *)multiplicativeOperator
                                                           multiplicativeExpression:(CCMultiplicativeExpressionNode *)multiplicativeExpression;


@end
