//
//  CCAdditiveOperatorNode.m
//  CompilerConstruction
//
//  Created by Thorsten Kober on 09.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCAdditiveOperatorNode.h"


@implementation CCAdditiveOperatorNode


#pragma mark - Public Methods
#pragma mark | Creators
+ (CCAdditiveOperatorNode *)CC_ADD_OP
{
    CCAdditiveOperatorNode *result = [self new];
    [result setAdditiveOperator:CC_ADD_OP];
    return result;
}


+ (CCAdditiveOperatorNode *)CC_SUB_OP
{
    CCAdditiveOperatorNode *result = [self new];
    [result setAdditiveOperator:CC_SUB_OP];
    return result;
}

@end
