//
//  CCEqualityExpressionNode.h
//  CompilerConstruction
//
//  Created by Thorsten Kober on 09.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCSyntaxNode.h"


@class CCRelationalExpressionNode;
@class CCEqualityOperatorNode;


#pragma mark - CCEqualityExpressionNode
@interface CCEqualityExpressionNode : CCSyntaxNode
@property (strong, nonatomic) CCSyntaxNode *relationalExpression;
@property (strong, nonatomic) CCSyntaxNode *equalityOperator;
@property (strong, nonatomic) CCSyntaxNode *equalityExpression;


#pragma mark | Creators
+ (CCEqualityExpressionNode *)equalityExpressionNodeWithRelationalExpression:(CCRelationalExpressionNode *)relationalExpression
                                                           equatlityOperator:(CCEqualityOperatorNode *)equalityOperator
                                                          equalityExpression:(CCEqualityExpressionNode *)equalityExpression;

@end
