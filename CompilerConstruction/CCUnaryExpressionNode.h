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
@property (strong, nonatomic) CCPostfixExpressionNode *postfixExpression;
@property (strong, nonatomic) CCPrefixOperatorNode *prefixExpression;
@property (strong, nonatomic) CCUnaryOperatorNode *unaryOperator;
@property (strong, nonatomic) CCUnaryExpressionNode *unaryExpression;


#pragma mark | Creators


@end
