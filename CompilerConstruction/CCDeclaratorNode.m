//
//  CCDeclaratorNode.m
//  CompilerConstruction
//
//  Created by Thorsten Kober on 09.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCDeclaratorNode.h"


@implementation CCDeclaratorNode


#pragma mark - Public Methods
#pragma mark | Creators
+ (CCDeclaratorNode *)declaratorNodeWithDeclarator:(CCDeclaratorNode *)declarator
                                        identifier:(CCIdentifierNode *)identifier
                                     parameterList:(CCParameterListNode *)parameterList
{
    CCDeclaratorNode *result = [self new];
    [result setDelcarator:declarator];
    [result setIdentifier:identifier];
    [result setParameterList:parameterList];
    return result;
}

@end
