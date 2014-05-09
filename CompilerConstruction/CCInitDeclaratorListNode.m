//
//  CCInitDeclaratorListNode.m
//  CompilerConstruction
//
//  Created by Thorsten Kober on 08.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCInitDeclaratorListNode.h"


@implementation CCInitDeclaratorListNode


#pragma mark - Public Methods
#pragma mark | Creators
+ (CCInitDeclaratorListNode *)initDeclaratorListNodeWithInitDeclaratorList:(CCInitDeclaratorListNode *)initDeclaratorList
                                                            initDeclarator:(CCInitDeclaratorNode *)initDeclarator
{
    CCInitDeclaratorListNode *result = [self new];
    [result setInitDeclaratorList:initDeclaratorList];
    [result setInitDeclarator:initDeclarator];
    return result;
}

@end
