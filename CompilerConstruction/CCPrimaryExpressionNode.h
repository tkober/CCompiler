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
@property (strong, nonatomic) CCIdentifierNode *identifier;
@property (strong, nonatomic) CCConstNode *constant;
@property (strong, nonatomic) CCStringNode *string;
@property (strong, nonatomic) CCExpressionNode *expression;

@end
