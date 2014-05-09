//
//  CCIterationStatementNode.h
//  CompilerConstruction
//
//  Created by Thorsten Kober on 08.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCSyntaxNode.h"


@class CCExpressionNode;
@class CCStatementNode;


#pragma mark - CCIterationStatementNode
@interface CCIterationStatementNode : CCSyntaxNode
@property (strong, nonatomic) CCExpressionNode *expression;
@property (strong, nonatomic) CCStatementNode *statement;


@end
