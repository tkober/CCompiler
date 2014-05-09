//
//  CCAssignmentExpressionNode.h
//  CompilerConstruction
//
//  Created by Thorsten Kober on 09.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCSyntaxNode.h"


@class CCConditionalExpressionNode;
@class CCUnaryExpressionNode;
@class CCAssignmentOperatorNode;


#pragma mark - CCAssignmentExpressionNode
@interface CCAssignmentExpressionNode : CCSyntaxNode
@property (strong, nonatomic) CCConditionalExpressionNode *conditionalExpression;
@property (strong, nonatomic) CCUnaryExpressionNode *unaryExpression;
@property (strong, nonatomic) CCAssignmentOperatorNode *assignmentOperator;
@property (strong, nonatomic) CCAssignmentExpressionNode *assignmentExpression;


@end
