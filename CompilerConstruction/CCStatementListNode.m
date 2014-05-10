//
//  CCStatementListNode.m
//  CompilerConstruction
//
//  Created by Thorsten Kober on 08.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCStatementListNode.h"
#import "CCSyntaxNode+Private.h"


@implementation CCStatementListNode


#pragma mark - Customized Getters
- (NSString *)ruleName
{
    return NSStringFromClass([self class]);
}



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


#pragma mark | Printing
- (void)printToOutput:(id<CCOutput>)output
          indentLevel:(NSUInteger)indentLevel
{
    [super printLine:[NSString stringWithFormat:@"%@%@", (indentLevel > 0 ? @"--" : @""), self.ruleName]
            toOutput:output
         indentLevel:indentLevel];
}

@end
