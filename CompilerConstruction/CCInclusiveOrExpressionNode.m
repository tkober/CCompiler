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
    return NSStringFromClass([self class]);
}



#pragma mark - Public Methods
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
}

@end
