//
//  CCAdditiveExpressionNode.h
//  CompilerConstruction
//
//  Created by Thorsten Kober on 09.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCSyntaxNode.h"


@class CCMultiplicativeExpressionNode;
@class CCAdditiveOperatorNode;


#pragma mark - CCAdditiveExpressionNode
@interface CCAdditiveExpressionNode : CCSyntaxNode
@property (strong, nonatomic) CCSyntaxNode *multiplicativeExpression;
@property (strong, nonatomic) CCSyntaxNode *additiveOperator;
@property (strong, nonatomic) CCSyntaxNode *additiveExpression;


#pragma mark | Creators
+ (CCAdditiveExpressionNode *)additiveExpressionNodeWithMultiplicativeExpression:(CCMultiplicativeExpressionNode *)multiplicativeExpression
                                                                additiveOperator:(CCAdditiveOperatorNode *)additiveOperator
                                                              additiveExpression:(CCAdditiveExpressionNode *)additiveExpression;


@end
