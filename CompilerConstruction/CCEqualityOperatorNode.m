//
//  CCEqualityOperatorNode.m
//  CompilerConstruction
//
//  Created by Thorsten Kober on 09.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCEqualityOperatorNode.h"


@implementation CCEqualityOperatorNode


#pragma mark - Public Methods
#pragma mark | Creators
+ (CCEqualityOperatorNode *)CC_EQUAL_OP
{
    CCEqualityOperatorNode *result = [self new];
    [result setEqualityOperator:CC_EQUAL_OP];
    return result;
}


+ (CCEqualityOperatorNode *)CC_NOT_EQUAL_OP
{
    CCEqualityOperatorNode *result = [self new];
    [result setEqualityOperator:CC_NOT_EQUAL_OP];
    return result;
}

@end
