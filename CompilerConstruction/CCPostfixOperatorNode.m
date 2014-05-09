//
//  CCPostfixOperatorNode.m
//  CompilerConstruction
//
//  Created by Thorsten Kober on 09.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCPostfixOperatorNode.h"


@implementation CCPostfixOperatorNode


#pragma mark - Public Methods
#pragma mark | Creators
+ (CCPostfixOperatorNode *)CC_UNARY_INCREMENT_OP
{
    CCPostfixOperatorNode *result = [self new];
    [result setPostfixOperator:CC_UNARY_INCREMENT_OP];
    return result;
}


+ (CCPostfixOperatorNode *)CC_UNARY_DECREMENT_OP
{
    CCPostfixOperatorNode *result = [self new];
    [result setPostfixOperator:CC_UNARY_DECREMENT_OP];
    return result;
}

@end
