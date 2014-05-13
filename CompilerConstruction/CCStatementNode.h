//
//  CCStatementNode.h
//  CompilerConstruction
//
//  Created by Thorsten Kober on 08.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCSyntaxNode.h"


@class CCLabeledStatementNode;
@class CCExpressionStatementNode;
@class CCCompoundStatementNode;
@class CCSelectionStatementNode;
@class CCIterationStatementNode;
@class CCJumpStatementNode;


#pragma mark - CCStatementNode
@interface CCStatementNode : CCSyntaxNode
@property (strong, nonatomic) CCSyntaxNode *labeledStatement;
@property (strong, nonatomic) CCSyntaxNode *expressionStatement;
@property (strong, nonatomic) CCSyntaxNode *compoundStatement;
@property (strong, nonatomic) CCSyntaxNode *selectionStatement;
@property (strong, nonatomic) CCSyntaxNode *iterationStatement;
@property (strong, nonatomic) CCSyntaxNode *jumpStatement;


#pragma mark | Creators
+ (CCStatementNode *)statementNodeWithLabeledStatement:(CCLabeledStatementNode *)labeledStatement;
+ (CCStatementNode *)statementNodeWithExpressionStatement:(CCExpressionStatementNode *)expressionStatement;
+ (CCStatementNode *)statementNodeWithCompoundStatement:(CCCompoundStatementNode *)compoundStatement;
+ (CCStatementNode *)statementNodeWithSelectionStatement:(CCSelectionStatementNode *)selectionStatement;
+ (CCStatementNode *)statementNodeWithIterationStatement:(CCIterationStatementNode *)iterationStatement;
+ (CCStatementNode *)statementNodeWithJumpStatement:(CCJumpStatementNode *)jumpStatement;

@end
