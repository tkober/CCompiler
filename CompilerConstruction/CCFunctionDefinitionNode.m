//
//  CCFunctionDefinitionNode.m
//  CompilerConstruction
//
//  Created by Thorsten Kober on 08.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCFunctionDefinitionNode.h"


@implementation CCFunctionDefinitionNode


#pragma mark - Public Methods
#pragma mark | Creators
+ (CCFunctionDefinitionNode *)functionDefinitionWithDeclarationSpecification:(CCDeclarationSpecificationNode *)declarationSpecification
                                                                  declarator:(CCDeclaratorNode *)declarator
                                                             declarationList:(CCDeclarationListNode *)declarationList
                                                           compoundStatement:(CCCompoundStatementNode *)compoundStatement
{
    CCFunctionDefinitionNode *result = [[self alloc] init];
    [result setDeclarationSpecification:declarationSpecification];
    [result setDeclarator:declarator];
    [result setDeclarationList:declarationList];
    [result setCompoundStatement:compoundStatement];
    return result;
}

@end
