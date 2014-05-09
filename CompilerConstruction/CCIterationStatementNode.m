//
//  CCIterationStatementNode.m
//  CompilerConstruction
//
//  Created by Thorsten Kober on 08.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCIterationStatementNode.h"


@implementation CCIterationStatementNode


#pragma mark - Public Methods
#pragma mark | Creators
+ (CCIterationStatementNode *)iterationStatementWithExpression:(CCExpressionNode *)expression
                                                     statement:(CCStatementNode *)statement
{
    CCIterationStatementNode *result = [self new];
    [result setExpression:expression];
    [result setStatement:statement];
    return result;
}

@end
