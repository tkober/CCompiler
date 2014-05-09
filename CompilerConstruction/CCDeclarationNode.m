//
//  CCDeclarationNode.m
//  CompilerConstruction
//
//  Created by Thorsten Kober on 08.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCDeclarationNode.h"


@implementation CCDeclarationNode


#pragma mark - Public Methods
#pragma mark | Creators
+ (CCDeclarationNode *)declarationNodeWithDeclarationSpecification:(CCDeclarationSpecificationNode *)declarationSpecification
                                                initDeclaratorList:(CCInitDeclaratorListNode *)initDeclaratorList
{
    CCDeclarationNode *result = [[self alloc] init];
    [result setDeclarationSpecification:declarationSpecification];
    [result setInitDeclaratorList:initDeclaratorList];
    return result;
}

@end
