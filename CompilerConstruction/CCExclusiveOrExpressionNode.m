//
//  CCExclusiveOrExpressionNode.m
//  CompilerConstruction
//
//  Created by Thorsten Kober on 09.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCExclusiveOrExpressionNode.h"
#import "CCSyntaxNode+Private.h"


@implementation CCExclusiveOrExpressionNode


#pragma mark - Customized Getters
- (NSString *)ruleName
{
    return NSStringFromClass([self class]);
}



#pragma mark - Public Methods
#pragma mark | Creators
+ (CCExclusiveOrExpressionNode *)exclusiveOrExpressionNodeWithAndExpression:(CCAndExpressionNode *)andExpression
                                                      exclusiveOrExpression:(CCExclusiveOrExpressionNode *)exclusiveOrExpression
{
    CCExclusiveOrExpressionNode *result = [self new];
    [result setAndExpression:andExpression];
    [result setExclusiveOrExpression:exclusiveOrExpression];
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
