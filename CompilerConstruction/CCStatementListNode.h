//
//  CCStatementListNode.h
//  CompilerConstruction
//
//  Created by Thorsten Kober on 08.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCSyntaxNode.h"


@class CCStatementNode;


#pragma mark - CCStatementListNode
@interface CCStatementListNode : CCSyntaxNode
@property (strong, nonatomic) CCSyntaxNode *statementList;
@property (strong, nonatomic) CCSyntaxNode *statement;


#pragma mark | Creators
+ (CCStatementListNode *)statementListNodeWithStatementList:(CCStatementListNode *)statementList
                                                  statement:(CCStatementNode *)statement;

@end
