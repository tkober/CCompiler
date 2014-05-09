//
//  CCInitDeclaratorNode.m
//  CompilerConstruction
//
//  Created by Thorsten Kober on 08.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCInitDeclaratorNode.h"


@implementation CCInitDeclaratorNode


#pragma mark - Public Methods
#pragma mark | Creators
+ (CCInitDeclaratorNode *)initDeclaratorNodeWithDeclarator:(CCDeclaratorNode *)declarator
                                               initializer:(CCInitializerNode *)initializer
{
    CCInitDeclaratorNode *result = [self new];
    [result setDeclarator:declarator];
    [result setInitializer:initializer];
    return result;
}

@end
