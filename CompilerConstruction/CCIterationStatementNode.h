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
@property (strong, nonatomic) CCSyntaxNode *expression;
@property (strong, nonatomic) CCSyntaxNode *statement;


#pragma mark | Creators
+ (CCIterationStatementNode *)iterationStatementWithExpression:(CCExpressionNode *)expression
                                                     statement:(CCStatementNode *)statement;


@end
