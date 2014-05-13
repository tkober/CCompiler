//
//  CCInclusiveOrExpressionNode.m
//  CompilerConstruction
//
//  Created by Thorsten Kober on 09.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCInclusiveOrExpressionNode.h"
#import "CCSyntaxNode+Private.h"
#import "CCExclusiveOrExpressionNode.h"


@implementation CCInclusiveOrExpressionNode


#pragma mark - Customized Getters
- (NSString *)ruleName
{
    return @"inclusive_or_expression";
}



#pragma mark - Public Methods
#pragma mark | Optimization
- (CCSyntaxNode *)optimize:(id<CCOutput>)output
{
    [self setInclusiveOrExpression:[self.inclusiveOrExpression optimize:output]];
    [self setExclusiveOrExpression:[self.exclusiveOrExpression optimize:output]];
    if (self.exclusiveOrExpression &&
        !self.inclusiveOrExpression) {
        [self printRemovedSelfWarningToOutput:output];
        return self.exclusiveOrExpression;
    }
    return self;
}


#pragma mark | Creators
+ (CCInclusiveOrExpressionNode *)inclusiveOrExpressionNodeWithExclusiveOrExpression:(CCExclusiveOrExpressionNode *)exclusiveOrExpression
                                                              inclusiveOrExpression:(CCInclusiveOrExpressionNode *)inclusiveOrExpression
{
    CCInclusiveOrExpressionNode *result = [self new];
    [result setExclusiveOrExpression:exclusiveOrExpression];
    [result setInclusiveOrExpression:inclusiveOrExpression];
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
    [self.inclusiveOrExpression printToOutput:output
                                  indentLevel:indentLevel];
    if (self.inclusiveOrExpression &&
        self.exclusiveOrExpression) {
        PRINT_EMPTY_LINE(output, indentLevel);
    }
    [self.exclusiveOrExpression printToOutput:output
                                  indentLevel:indentLevel];
}

@end
