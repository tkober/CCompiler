//
//  CCIterationStatementNode.m
//  CompilerConstruction
//
//  Created by Thorsten Kober on 08.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCIterationStatementNode.h"
#import "CCSyntaxNode+Private.h"


@implementation CCIterationStatementNode


#pragma mark - Customized Getters
- (NSString *)ruleName
{
    return NSStringFromClass([self class]);
}



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


#pragma mark | Printing
- (void)printToOutput:(id<CCOutput>)output
          indentLevel:(NSUInteger)indentLevel
{
    [super printLine:self.ruleName
            toOutput:output
         indentLevel:indentLevel];
}

@end
