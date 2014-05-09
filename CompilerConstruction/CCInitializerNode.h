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
@property (strong, nonatomic) CCAssignmentExpressionNode *assignmentExpression;
@property (strong, nonatomic) CCInitializerListNode *initializerList;


@end
