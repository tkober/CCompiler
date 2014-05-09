//
//  CCParameterListNode.m
//  CompilerConstruction
//
//  Created by Thorsten Kober on 09.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCParameterListNode.h"


@implementation CCParameterListNode


#pragma mark - Public Methods
#pragma mark | Creators
+ (CCParameterListNode *)parameterListNodeWithParameterDeclaration:(CCParameterDeclaration *)parameterDeclaration
                                                     parameterList:(CCParameterListNode *)parameterList
{
    CCParameterListNode *result = [self new];
    [result setParameterDeclaration:parameterDeclaration];
    [result setParameterList:parameterList];
    return result;
}

@end
