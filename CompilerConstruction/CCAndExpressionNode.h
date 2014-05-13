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
@property (strong, nonatomic) CCSyntaxNode *equalityExpression;
@property (strong, nonatomic) CCSyntaxNode *andExpression;


#pragma mark | Creators
+ (CCAndExpressionNode *)andExpressionNodeWithEqualityExpression:(CCEqualityExpressionNode *)equalityExpression
                                                   andExpression:(CCAndExpressionNode *)andExpression;


@end
