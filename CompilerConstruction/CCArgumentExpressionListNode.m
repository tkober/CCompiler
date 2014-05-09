//
//  CCArgumentExpressionListNode.m
//  CompilerConstruction
//
//  Created by Thorsten Kober on 09.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCArgumentExpressionListNode.h"


@implementation CCArgumentExpressionListNode


#pragma mark - Public Methods
#pragma mark | Creators
+ (CCArgumentExpressionListNode *)argumentExpressionListNodeWithAssignmentExpression:(CCAssignmentExpressionNode *)assignmentExpression
                                                              argumentExpressionList:(CCArgumentExpressionListNode *)argumentExpressionList
{
    CCArgumentExpressionListNode *result = [self new];
    [result setAssignmentExpression:assignmentExpression];
    [result setArgumentExpressionList:argumentExpressionList];
    return result;
}

@end
