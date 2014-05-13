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
@property (strong, nonatomic) CCSyntaxNode *conditionalExpression;
@property (strong, nonatomic) CCSyntaxNode *unaryExpression;
@property (strong, nonatomic) CCSyntaxNode *assignmentOperator;
@property (strong, nonatomic) CCSyntaxNode *assignmentExpression;


#pragma mark | Creators
+ (CCAssignmentExpressionNode *)assignmentExpressionNodeWithConditionalExpression:(CCConditionalExpressionNode *)conditionalExpression;
+ (CCAssignmentExpressionNode *)assignmentExpressionNodeWithUnaryExpression:(CCUnaryExpressionNode *)unaryExpression
                                                         assignmentOperator:(CCAssignmentOperatorNode *)assignmentOperator
                                                       assignmentExpression:(CCAssignmentExpressionNode *)assignmentExpression;



@end
