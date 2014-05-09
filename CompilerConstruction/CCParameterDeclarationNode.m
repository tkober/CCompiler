//
//  CCParameterDeclarationNode.m
//  CompilerConstruction
//
//  Created by Thorsten Kober on 09.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCParameterDeclarationNode.h"


@implementation CCParameterDeclarationNode


#pragma mark - Public Methods
#pragma mark | Creators
+ (CCParameterDeclarationNode *)parameterDeclarationNodeWithDeclarationSpecification:(CCDeclarationSpecificationNode *)declarationSepcification
                                                                          declarator:(CCDeclaratorNode *)declarator
{
    CCParameterDeclarationNode *result = [self new];
    [result setDeclarationSpecification:declarationSepcification];
    [result setDeclarator:declarator];
    return result;
}

@end
