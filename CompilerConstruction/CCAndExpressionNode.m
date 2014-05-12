//
//  CCAndExpressionNode.m
//  CompilerConstruction
//
//  Created by Thorsten Kober on 09.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCAndExpressionNode.h"
#import "CCSyntaxNode+Private.h"
#import "CCEqualityExpressionNode.h"


@implementation CCAndExpressionNode


#pragma mark - Customized Getters
- (NSString *)ruleName
{
    return @"and_expression";
}



#pragma mark - Public Methods
#pragma mark | Optimization
- (CCSyntaxNode *)optimize
{
    return self;
}


#pragma mark | Creators
+ (CCAndExpressionNode *)andExpressionNodeWithEqualityExpression:(CCEqualityExpressionNode *)equalityExpression
                                                   andExpression:(CCAndExpressionNode *)andExpression
{
    CCAndExpressionNode *result = [self new];
    [result setEqualityExpression:equalityExpression];
    [result setAndExpression:andExpression];
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
    [self.andExpression printToOutput:output
                          indentLevel:indentLevel];
    if (self.andExpression &&
        self.equalityExpression) {
        PRINT_EMPTY_LINE(output, indentLevel);
    }
    [self.equalityExpression printToOutput:output
                               indentLevel:indentLevel];
}

@end
