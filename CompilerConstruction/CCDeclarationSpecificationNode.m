//
//  CCDeclarationSpecificationNode.m
//  CompilerConstruction
//
//  Created by Thorsten Kober on 08.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCDeclarationSpecificationNode.h"


@implementation CCDeclarationSpecificationNode


#pragma mark - Public Methods
#pragma mark | Creators
+ (CCDeclarationSpecificationNode *)declarationSpecificationNodeWithdeclarationSpecification:(CCDeclarationSpecificationNode *)declarationSpecification
                                                                           typeSpecification:(CCTypeSpecificationNode *)typeSpecification
{
    CCDeclarationSpecificationNode *result = [self new];
    [result setDeclarationSpecification:declarationSpecification];
    [result setTypeSpecification:typeSpecification];
    return result;
}


@end
