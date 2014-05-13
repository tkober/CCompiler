//
//  CCUnaryExpressionNode.h
//  CompilerConstruction
//
//  Created by Thorsten Kober on 09.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCSyntaxNode.h"


@class CCPostfixExpressionNode;
@class CCPrefixOperatorNode;
@class CCUnaryOperatorNode;



#pragma mark - CCUnaryExpressionNode
@interface CCUnaryExpressionNode : CCSyntaxNode
@property (strong, nonatomic) CCSyntaxNode *postfixExpression;
@property (strong, nonatomic) CCSyntaxNode *prefixOperator;
@property (strong, nonatomic) CCSyntaxNode *unaryOperator;
@property (strong, nonatomic) CCSyntaxNode *unaryExpression;


#pragma mark | Creators
+ (CCUnaryExpressionNode *)unaryExpressionNodeWithPostfixExpression:(CCPostfixExpressionNode *)postfixExpression;
+ (CCUnaryExpressionNode *)unaryExpressionNodeWithPrefixOperator:(CCPrefixOperatorNode *)prefixOperator
                                                 unaryExpression:(CCUnaryExpressionNode *)unaryExpression;
+ (CCUnaryExpressionNode *)unaryExpressionNodeWithUnaryOperator:(CCUnaryOperatorNode *)unaryOperator;


@end
