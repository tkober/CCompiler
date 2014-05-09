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
@property (strong, nonatomic) CCPrimaryExpressionNode *primaryExpression;
@property (strong, nonatomic) CCArgumentExpressionListNode *argumentExpressionList;
@property (strong, nonatomic) CCPostfixOperatorNode *postfixOperator;
@property (strong, nonatomic) CCPostfixExpressionNode *postfixExpression;


#pragma mark | Creators


@end
