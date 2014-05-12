//
//  CCLogicalAndExpressionNode.m
//  CompilerConstruction
//
//  Created by Thorsten Kober on 09.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCLogicalAndExpressionNode.h"
#import "CCSyntaxNode+Private.h"
#import "CCInclusiveOrExpressionNode.h"


@implementation CCLogicalAndExpressionNode


#pragma mark - Customized Getters
- (NSString *)ruleName
{
    return @"logical_and_expression";
}



#pragma mark - Public Methods
#pragma mark | Optimization
- (CCSyntaxNode *)optimize
{
    return self;
}


#pragma mark | Creators
+ (CCLogicalAndExpressionNode *)logicalAndExpressionNodeWithInclusiveOrExpression:(CCInclusiveOrExpressionNode *)inclusiveOrExpression
                                                             logicalAndExpression:(CCLogicalAndExpressionNode *)logicalAndExpression
{
    CCLogicalAndExpressionNode *result = [self new];
    [result setInclusiveOrExpression:inclusiveOrExpression];
    [result setLogicalAndExpression:logicalAndExpression];
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
    [self.logicalAndExpression printToOutput:output
                                 indentLevel:indentLevel];
    if (self.logicalAndExpression &&
        self.inclusiveOrExpression) {
        PRINT_EMPTY_LINE(output, indentLevel);
    }
    [self.inclusiveOrExpression printToOutput:output
                                  indentLevel:indentLevel];
}

@end
