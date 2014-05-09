//
//  CCArgumentExpressionListNode.h
//  CompilerConstruction
//
//  Created by Thorsten Kober on 09.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCSyntaxNode.h"


@class CCAssignmentExpressionNode;


#pragma mark - CCArgumentExpressionListNode
@interface CCArgumentExpressionListNode : CCSyntaxNode
@property (strong, nonatomic) CCAssignmentExpressionNode *assignmentExpression;
@property (strong, nonatomic) CCArgumentExpressionListNode *argumentExpressionList;


#pragma mark | Creators
+ (CCArgumentExpressionListNode *)argumentExpressionListNodeWithAssignmentExpression:(CCAssignmentExpressionNode *)assignmentExpression
                                                              argumentExpressionList:(CCArgumentExpressionListNode *)argumentExpressionList;


@end
