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
    return NSStringFromClass([self class]);
}



#pragma mark - Public Methods
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
}

@end
