//
//  CCInitializerListNode.m
//  CompilerConstruction
//
//  Created by Thorsten Kober on 09.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCInitializerListNode.h"


@implementation CCInitializerListNode


#pragma mark - Public Methods
#pragma mark | Creators
+ (CCInitializerListNode *)initializerListNodeWithInitializer:(CCInitializerNode *)initializer
                                              initializerList:(CCInitializerListNode *)initializerList
{
    CCInitializerListNode *result = [self new];
    [result setInitializer:initializer];
    [result setInitializerList:initializerList];
    return result;
}

@end
