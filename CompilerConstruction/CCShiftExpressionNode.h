//
//  CCShiftExpressionNode.h
//  CompilerConstruction
//
//  Created by Thorsten Kober on 09.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCSyntaxNode.h"


@class CCAdditiveExpressionNode;
@class CCShiftOperatorNode;


#pragma mark - CCShiftExpressionNode
@interface CCShiftExpressionNode : CCSyntaxNode
@property (strong, nonatomic) CCAdditiveExpressionNode *additiveExpression;
@property (strong, nonatomic) CCShiftOperatorNode *shiftOperator;
@property (strong, nonatomic) CCShiftExpressionNode *shiftExpression;


#pragma mark | Creators


@end
