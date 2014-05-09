//
//  CCInitializerNode.m
//  CompilerConstruction
//
//  Created by Thorsten Kober on 09.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCInitializerNode.h"


@implementation CCInitializerNode


#pragma mark - Public Methods
#pragma mark | Creators
+ (CCInitializerNode *)initializerNodeWithAssignmentExpression:(CCAssignmentExpressionNode *)assignmentExpression
                                               initializerList:(CCInitializerListNode *)initializerList
{
    CCInitializerNode *result = [self new];
    [result setAssignmentExpression:assignmentExpression];
    [result setInitializerList:initializerList];
    return result;
}

@end
