//
//  CCExclusiveOrExpressionNode.m
//  CompilerConstruction
//
//  Created by Thorsten Kober on 09.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCExclusiveOrExpressionNode.h"
#import "CCSyntaxNode+Private.h"
#import "CCAndExpressionNode.h"


@implementation CCExclusiveOrExpressionNode


#pragma mark - Customized Getters
- (NSString *)ruleName
{
    return @"exclusive_or_expression";
}



#pragma mark - Public Methods
#pragma mark | Optimization
- (CCSyntaxNode *)optimize:(id<CCOutput>)output
{
    [self setExclusiveOrExpression:[self.exclusiveOrExpression optimize:output]];
    [self setAndExpression:[self.andExpression optimize:output]];
    if (self.andExpression &&
        !self.exclusiveOrExpression) {
        [self printRemovedSelfWarningToOutput:output];
        return self.andExpression;
    }
    return self;
}


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
    indentLevel++;
    [self.exclusiveOrExpression printToOutput:output
                                  indentLevel:indentLevel];
    if (self.exclusiveOrExpression &&
        self.andExpression) {
        PRINT_EMPTY_LINE(output, indentLevel);
    }
    [self.andExpression printToOutput:output
                          indentLevel:indentLevel];
}

@end
