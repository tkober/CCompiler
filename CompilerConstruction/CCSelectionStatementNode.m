//
//  CCSelectionStatementNode.m
//  CompilerConstruction
//
//  Created by Thorsten Kober on 08.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCSelectionStatementNode.h"
#import "CCSyntaxNode+Private.h"


@implementation CCSelectionStatementNode


#pragma mark - Customized Getters
- (NSString *)ruleName
{
    return NSStringFromClass([self class]);
}



#pragma mark - Public Methods
#pragma mark | Creators
+ (CCSelectionStatementNode *)selectionStatementNodeWithExpression:(CCExpressionNode *)expression
                                                     thenStatement:(CCStatementNode *)thenStatement
                                                     elseStatement:(CCStatementNode *)elseStatement
{
    CCSelectionStatementNode *result = [self new];
    [result setExpression:expression];
    [result setThenStatement:thenStatement];
    [result setElseStatement:elseStatement];
    return result;
}


#pragma mark | Printing
- (void)printToOutput:(id<CCOutput>)output
          indentLevel:(NSUInteger)indentLevel
{
    [super printLine:[NSString stringWithFormat:@"%@%@", (indentLevel > 0 ? @"--" : @""), self.ruleName]
            toOutput:output
         indentLevel:indentLevel];
    indentLevel++;
}

@end
