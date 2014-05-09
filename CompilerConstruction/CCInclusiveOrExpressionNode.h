//
//  CCInclusiveOrExpressionNode.h
//  CompilerConstruction
//
//  Created by Thorsten Kober on 09.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCSyntaxNode.h"


@class CCExclusiveOrExpressionNode;


#pragma mark - CCInclusiveOrExpressionNode
@interface CCInclusiveOrExpressionNode : CCSyntaxNode
@property (strong, nonatomic) CCExclusiveOrExpressionNode *exclusiveOrExpression;
@property (strong, nonatomic) CCInclusiveOrExpressionNode *inclusiveOrExpression;

@end
