//
//  CCLabeledStatementNode.h
//  CompilerConstruction
//
//  Created by Thorsten Kober on 08.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCSyntaxNode.h"


@class CCStatementNode;
@class CCIdentifierNode;


#pragma mark - CCLabeledStatementNode
@interface CCLabeledStatementNode : CCSyntaxNode
@property (strong, nonatomic) CCStatementNode *statement;
@property (strong, nonatomic) CCIdentifierNode *identifier;


#pragma mark | Creators
+ (CCLabeledStatementNode *)labeledExpressionNodeWithStatement:(CCStatementNode *)statement
                                                    identifier:(CCIdentifierNode *)identifier;


@end
