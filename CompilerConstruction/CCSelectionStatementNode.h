//
//  CCSelectionStatementNode.h
//  CompilerConstruction
//
//  Created by Thorsten Kober on 08.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCSyntaxNode.h"


@class CCExpressionNode;
@class CCStatementNode;


#pragma mark - CCSelectionStatementNode
@interface CCSelectionStatementNode : CCSyntaxNode
@property (strong, nonatomic) CCSyntaxNode *expression;
@property (strong, nonatomic) CCSyntaxNode *thenStatement;
@property (strong, nonatomic) CCSyntaxNode *elseStatement;


#pragma mark | Creators
+ (CCSelectionStatementNode *)selectionStatementNodeWithExpression:(CCExpressionNode *)expression
                                                     thenStatement:(CCStatementNode *)thenStatement
                                                     elseStatement:(CCStatementNode *)elseStatement;


@end
