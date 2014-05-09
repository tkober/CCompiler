//
//  CCStringNode.m
//  CompilerConstruction
//
//  Created by Thorsten Kober on 09.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCStringNode.h"


@implementation CCStringNode


#pragma mark - Public Methods
#pragma mark | Creators
+ (CCStringNode *)stringNodeWithValue:(char *)value
{
    CCStringNode *result = [self new];
    [result setValue:[NSString stringWithUTF8String:value]];
    return result;
}

@end
