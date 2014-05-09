//
//  CCAdditiveExpressionNode.h
//  CompilerConstruction
//
//  Created by Thorsten Kober on 09.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCSyntaxNode.h"


@class CCMultiplicativeExpressionNode;
@class CCAdditiveOperatorNode;


#pragma mark - CCAdditiveExpressionNode
@interface CCAdditiveExpressionNode : CCSyntaxNode
@property (strong, nonatomic) CCMultiplicativeExpressionNode *multiplicativeExpression;
@property (strong, nonatomic) CCAdditiveOperatorNode *additiveOperator;
@property (strong, nonatomic) CCAdditiveExpressionNode *additiveExpression;

@end
