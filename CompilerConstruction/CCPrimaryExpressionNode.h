//
//  CCPrimaryExpressionNode.h
//  CompilerConstruction
//
//  Created by Thorsten Kober on 09.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCSyntaxNode.h"


@class CCIdentifierNode;
@class CCConstNode;
@class CCStringNode;
@class CCExpressionNode;


#pragma mark - CCPrimaryExpressionNode
@interface CCPrimaryExpressionNode : CCSyntaxNode
@property (strong, nonatomic) CCSyntaxNode *identifier;
@property (strong, nonatomic) CCSyntaxNode *constant;
@property (strong, nonatomic) CCSyntaxNode *string;
@property (strong, nonatomic) CCSyntaxNode *expression;


#pragma mark | Creators
+ (CCPrimaryExpressionNode *)primaryExpressionNodeWithIdentifier:(CCIdentifierNode *)identifier;
+ (CCPrimaryExpressionNode *)primaryExpressionNodeWithConstant:(CCConstNode *)constant;
+ (CCPrimaryExpressionNode *)primaryExpressionNodeWithString:(CCStringNode *)string;
+ (CCPrimaryExpressionNode *)primaryExpressionNodeWithExpression:(CCExpressionNode *)expression;

@end
