//
//  CCIdentifierNode.m
//  CompilerConstruction
//
//  Created by Thorsten Kober on 09.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCIdentifierNode.h"


@implementation CCIdentifierNode


#pragma mark - Public Methods
#pragma mark | Creators
+ (CCIdentifierNode *)identifierNodeWithName:(char *)name
                                   reference:(CCSymbolReference *)reference
{
    CCIdentifierNode *result = [self new];
    [result setName:[NSString stringWithUTF8String:name]];
    [result setReference:reference];
    return result;
}

@end
