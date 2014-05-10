//
//  CCRelationalExpressionNode.m
//  CompilerConstruction
//
//  Created by Thorsten Kober on 09.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCRelationalExpressionNode.h"
#import "CCSyntaxNode+Private.h"


@implementation CCRelationalExpressionNode


#pragma mark - Customized Getters
- (NSString *)ruleName
{
    return NSStringFromClass([self class]);
}



#pragma mark - Public Methods
#pragma mark | Creators
+ (CCRelationalExpressionNode *)relationalExpressionNodeWithShiftExpression:(CCShiftExpressionNode *)shiftExpression
                                                            compareOperator:(CCCompareOperatorNode *)compareOperator
                                                       relationalExpression:(CCRelationalExpressionNode *)relationalExpression
{
    CCRelationalExpressionNode *result = [self new];
    [result setShiftExpression:shiftExpression];
    [result setComareOperator:compareOperator];
    [result setRelationalExpression:relationalExpression];
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
