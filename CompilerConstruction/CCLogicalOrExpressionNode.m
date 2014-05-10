//
//  CCLogicalOrExpression.m
//  CompilerConstruction
//
//  Created by Thorsten Kober on 09.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCLogicalOrExpressionNode.h"
#import "CCSyntaxNode+Private.h"


@implementation CCLogicalOrExpressionNode


#pragma mark - Customized Getters
- (NSString *)ruleName
{
    return NSStringFromClass([self class]);
}



#pragma mark - Public Methods
#pragma mark | Creators
+ (CCLogicalOrExpressionNode *)logicalOrExpressionNodeWithLogicalAndExpression:(CCLogicalAndExpressionNode *)logicalAndExpression
                                                           logicalOrExpression:(CCLogicalOrExpressionNode *)logicalOrExpression
{
    CCLogicalOrExpressionNode *result = [self new];
    [result setLogicalAndExpression:logicalAndExpression];
    [result setLogicalOrExpression:logicalOrExpression];
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
