//
//  CCAndExpressionNode.h
//  CompilerConstruction
//
//  Created by Thorsten Kober on 09.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCSyntaxNode.h"


@class CCEqualityExpressionNode;


#pragma mark - CCAndExpressionNode
@interface CCAndExpressionNode : CCSyntaxNode
@property (strong, nonatomic) CCEqualityExpressionNode *equalityExpression;
@property (strong, nonatomic) CCAndExpressionNode *andExpression;


@end
