//
//  CCShiftOperatorNode.m
//  CompilerConstruction
//
//  Created by Thorsten Kober on 09.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCShiftOperatorNode.h"
#import "CCSyntaxNode+Private.h"


@implementation CCShiftOperatorNode


#pragma mark - Customized Getters
- (NSString *)ruleName
{
    return NSStringFromClass([self class]);
}



#pragma mark - Public Methods
#pragma mark | Creators
+ (CCShiftOperatorNode *)CC_SHIFT_LEFT_OP
{
    CCShiftOperatorNode *result = [self new];
    [result setShiftOperator:CC_SHIFT_LEFT_OP];
    return result;
}


+ (CCShiftOperatorNode *)CC_SHIFT_RIGTH_OP
{
    CCShiftOperatorNode *result = [self new];
    [result setShiftOperator:CC_SHIFT_RIGTH_OP];
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
