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
@property (strong, nonatomic) CCSyntaxNode *additiveExpression;
@property (strong, nonatomic) CCSyntaxNode *shiftOperator;
@property (strong, nonatomic) CCSyntaxNode *shiftExpression;


#pragma mark | Creators
+ (CCShiftExpressionNode *)shiftExpressionNodeWithAdditiveExpression:(CCAdditiveExpressionNode *)additiveExpression
                                                       shiftOperator:(CCShiftOperatorNode *)shiftOperator
                                                     shiftExpression:(CCShiftExpressionNode *)shiftExpression;


@end
