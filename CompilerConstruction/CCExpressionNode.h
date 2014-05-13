//
//  CCExpressionNode.h
//  CompilerConstruction
//
//  Created by Thorsten Kober on 09.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCSyntaxNode.h"


@class CCAssignmentExpressionNode;


#pragma mark - CCExpressionNode
@interface CCExpressionNode : CCSyntaxNode
@property (strong, nonatomic) CCSyntaxNode *assignmentExpression;
@property (strong, nonatomic) CCSyntaxNode *expression;


#pragma mark | Creators
+ (CCExpressionNode *)expressionNodeWithAssignmentExpression:(CCAssignmentExpressionNode *)assignmentExpression
                                                  expression:(CCExpressionNode *)expression;


@end
