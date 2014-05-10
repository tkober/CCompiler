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
    return result;
}


+ (CCJumpStatementNode *)continueStatement
{
    return [self new];
}


+ (CCJumpStatementNode *)breakStatement
{
    return [self new];
}


+ (CCJumpStatementNode *)returnStatementWithExpression:(CCExpressionNode *)expression
{
    CCJumpStatementNode *result = [self new];
    return result;
}


#pragma mark | Printing
- (void)printToOutput:(id<CCOutput>)output
          indentLevel:(NSUInteger)indentLevel
{
    [super printLine:self.ruleName
            toOutput:output
         indentLevel:indentLevel];
}

@end
