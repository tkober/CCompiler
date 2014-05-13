//
//  CCRelationalExpressionNode.h
//  CompilerConstruction
//
//  Created by Thorsten Kober on 09.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCSyntaxNode.h"


@class CCShiftExpressionNode;
@class CCCompareOperatorNode;


#pragma mark - CCRelationalExpressionNode
@interface CCRelationalExpressionNode : CCSyntaxNode
@property (strong, nonatomic) CCSyntaxNode *shiftExpression;
@property (strong, nonatomic) CCSyntaxNode *comareOperator;
@property (strong, nonatomic) CCSyntaxNode *relationalExpression;


#pragma mark | Creators
+ (CCRelationalExpressionNode *)relationalExpressionNodeWithShiftExpression:(CCShiftExpressionNode *)shiftExpression
                                                            compareOperator:(CCCompareOperatorNode *)compareOperator
                                                       relationalExpression:(CCRelationalExpressionNode *)relationalExpression;


@end
