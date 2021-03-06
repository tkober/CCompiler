//
//  CCInitializerNode.h
//  CompilerConstruction
//
//  Created by Thorsten Kober on 09.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCSyntaxNode.h"


@class CCAssignmentExpressionNode;
@class CCInitializerListNode;


#pragma mark - CCInitializerNode
@interface CCInitializerNode : CCSyntaxNode
@property (strong, nonatomic) CCSyntaxNode *assignmentExpression;
@property (strong, nonatomic) CCSyntaxNode *initializerList;


#pragma mark | Creators
+ (CCInitializerNode *)initializerNodeWithAssignmentExpression:(CCAssignmentExpressionNode *)assignmentExpression
                                               initializerList:(CCInitializerListNode *)initializerList;


@end
