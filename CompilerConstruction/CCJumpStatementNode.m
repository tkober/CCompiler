//
//  CCJumpStatementNode.m
//  CompilerConstruction
//
//  Created by Thorsten Kober on 08.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCJumpStatementNode.h"
#import "CCSyntaxNode+Private.h"


@implementation CCJumpStatementNode


#pragma mark - Customized Getters
- (NSString *)ruleName
{
    return NSStringFromClass([self class]);
}



#pragma mark - Public Methods
#pragma mark | Creators
+ (CCJumpStatementNode *)gotoStatementWithIdentifier:(CCIdentifierNode *)identifer
{
    CCJumpStatementNode *result = [self new];
    [result setJumpStatementType:CCJumpStatementGOTO];
    [result setIdentifier:identifer];
    return result;
}


+ (CCJumpStatementNode *)continueStatement
{
    CCJumpStatementNode *result = [self new];
    [result setJumpStatementType:CCJumpStatementContinue];
    return result;
}


+ (CCJumpStatementNode *)breakStatement
{
    CCJumpStatementNode *result = [self new];
    [result setJumpStatementType:CCJumpStatementBreak];
    return result;
}


+ (CCJumpStatementNode *)returnStatementWithExpression:(CCExpressionNode *)expression
{
    CCJumpStatementNode *result = [self new];
    [result setExpression:expression];
    [result setJumpStatementType:CCJumpStatementReturn];
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
