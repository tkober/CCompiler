//
//  CCFunctionDefinitionNode.m
//  CompilerConstruction
//
//  Created by Thorsten Kober on 08.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCFunctionDefinitionNode.h"
#import "CCSyntaxNode+Private.h"


@implementation CCFunctionDefinitionNode


#pragma mark - Customized Getters
- (NSString *)ruleName
{
    return NSStringFromClass([self class]);
}



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


#pragma mark | Printing
- (void)printToOutput:(id<CCOutput>)output
          indentLevel:(NSUInteger)indentLevel
{
    [super printLine:self.ruleName
            toOutput:output
         indentLevel:indentLevel];
}

@end
