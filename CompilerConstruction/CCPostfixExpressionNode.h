//
//  CCPostfixExpressionNode.h
//  CompilerConstruction
//
//  Created by Thorsten Kober on 09.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCSyntaxNode.h"


@class CCPrimaryExpressionNode;
@class CCArgumentExpressionListNode;
@class CCPostfixOperatorNode;


#pragma mark - CCPostfixExpressionNode
@interface CCPostfixExpressionNode : CCSyntaxNode
@property (strong, nonatomic) CCSyntaxNode *primaryExpression;
@property (strong, nonatomic) CCSyntaxNode *argumentExpressionList;
@property (strong, nonatomic) CCSyntaxNode *postfixOperator;
@property (strong, nonatomic) CCSyntaxNode *postfixExpression;


#pragma mark | Creators
+ (CCPostfixExpressionNode *)postfixExpressionNodeWithPrimaryExpression:(CCPrimaryExpressionNode *)primaryExpression;
+ (CCPostfixExpressionNode *)postfixExpressionNodeWithPostfixExpression:(CCPostfixExpressionNode *)postfixExpression;
+ (CCPostfixExpressionNode *)postfixExpressionNodeWithPostfixExpression:(CCPostfixExpressionNode *)postfixExpression
                                                 argumentExpressionList:(CCArgumentExpressionListNode *)argumentExpressionList;
+ (CCPostfixExpressionNode *)postfixExpressionNodeWithPostfixExpression:(CCPostfixExpressionNode *)postfixExpression
                                                        postfixOperator:(CCPostfixOperatorNode *)postfixOperator;


@end
