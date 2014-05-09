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
@property (strong, nonatomic) CCAssignmentExpressionNode *assignmentExpression;
@property (strong, nonatomic) CCExpressionNode *expression;


#pragma mark | Creators


@end
