//
//  CCStatementNode.h
//  CompilerConstruction
//
//  Created by Thorsten Kober on 08.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCSyntaxNode.h"


@class CCLabeledStatementNode;
@class CCCompoundStatementNode;
@class CCSelectionStatementNode;
@class CCIterationStatementNode;
@class CCJumpStatementNode;


#pragma mark - CCStatementNode
@interface CCStatementNode : CCSyntaxNode
@property (strong, nonatomic) CCLabeledStatementNode *labeledStatement;
@property (strong, nonatomic) CCCompoundStatementNode *compoundStatement;
@property (strong, nonatomic) CCSelectionStatementNode *selectionStatement;
@property (strong, nonatomic) CCIterationStatementNode *iterationStatement;
@property (strong, nonatomic) CCJumpStatementNode *jumpStatement;


#pragma mark | Creators

@end
