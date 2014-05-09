//
//  CCStatementListNode.m
//  CompilerConstruction
//
//  Created by Thorsten Kober on 08.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCStatementListNode.h"


@implementation CCStatementListNode


#pragma mark - Public Methods
#pragma mark | Creators
+ (CCStatementListNode *)statementListNodeWithStatementList:(CCStatementListNode *)statementList
                                                  statement:(CCStatementNode *)statement
{
    CCStatementListNode *result = [[self alloc] init];
    [result setStatementList:statementList];
    [result setStatement:statement];
    return result;
}

@end
