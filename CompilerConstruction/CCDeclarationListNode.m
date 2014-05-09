//
//  CCDeclarationListNode.m
//  CompilerConstruction
//
//  Created by Thorsten Kober on 08.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCDeclarationListNode.h"


@implementation CCDeclarationListNode


#pragma mark - Public Methods
#pragma mark | Creators
+ (CCDeclarationListNode *)declarationListNodeWithDeclarationList:(CCDeclarationListNode *)declarationList
                                                      declaration:(CCDeclarationNode *)declaration
{
    CCDeclarationListNode *result = [[self alloc] init];
    [result setDeclarationList:declarationList];
    [result setDeclaration:declaration];
    return result;
}

@end
