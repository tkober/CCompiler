//
//  CCShiftOperatorNode.m
//  CompilerConstruction
//
//  Created by Thorsten Kober on 09.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCShiftOperatorNode.h"


@implementation CCShiftOperatorNode


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

@end
