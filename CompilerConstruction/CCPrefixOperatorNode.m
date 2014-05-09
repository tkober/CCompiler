//
//  CCPrefixOperator.m
//  CompilerConstruction
//
//  Created by Thorsten Kober on 09.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCPrefixOperatorNode.h"


@implementation CCPrefixOperatorNode


#pragma mark - Public Methods
#pragma mark | Creators
+ (CCPrefixOperatorNode *)prefixIncrement
{
    CCPrefixOperatorNode *result = [self new];
    [result setOperatorType:CCPrefixOperatorIncrement];
    return result;
}


+ (CCPrefixOperatorNode *)prefixDecrement
{
    CCPrefixOperatorNode *result = [self new];
    [result setOperatorType:CCPrefixOperatorDecrement];
    return result;
}

@end
