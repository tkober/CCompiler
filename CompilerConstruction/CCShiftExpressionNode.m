//
//  CCShiftExpressionNode.m
//  CompilerConstruction
//
//  Created by Thorsten Kober on 09.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCShiftExpressionNode.h"
#import "CCSyntaxNode+Private.h"


@implementation CCShiftExpressionNode


#pragma mark - Customized Getters
- (NSString *)ruleName
{
    return NSStringFromClass([self class]);
}



#pragma mark - Public Methods
#pragma mark | Creators
+ (CCShiftExpressionNode *)shiftExpressionNodeWithAdditiveExpression:(CCAdditiveExpressionNode *)additiveExpression
                                                       shiftOperator:(CCShiftOperatorNode *)shiftOperator
                                                     shiftExpression:(CCShiftExpressionNode *)shiftExpression
{
    CCShiftExpressionNode *result = [self new];
    [result setAdditiveExpression:additiveExpression];
    [result setShiftOperator:shiftOperator];
    [result setShiftExpression:shiftExpression];
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
