//
//  CCFunctionDefinitionNode.m
//  CompilerConstruction
//
//  Created by Thorsten Kober on 08.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCFunctionDefinitionNode.h"
#import "CCSyntaxNode+Private.h"
#import "CCDeclarationSpecificationNode.h"
#import "CCDeclaratorNode.h"
#import "CCDeclarationListNode.h"
#import "CCCompoundStatementNode.h"


@implementation CCFunctionDefinitionNode


#pragma mark - Customized Getters
- (NSString *)ruleName
{
    return @"function_definition";
}



#pragma mark - Public Methods
#pragma mark | Optimization
- (CCSyntaxNode *)optimize
{
    return self;
}


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
    [super printLine:[NSString stringWithFormat:@"%@%@", (indentLevel > 0 ? @"--" : @""), self.ruleName]
            toOutput:output
         indentLevel:indentLevel];
    indentLevel++;
    [self.declarationSpecification printToOutput:output
                                     indentLevel:indentLevel];
    [self.declarator printToOutput:output
                       indentLevel:indentLevel];
    [self.declarationList printToOutput:output
                            indentLevel:indentLevel];
    [self.compoundStatement printToOutput:output
                              indentLevel:indentLevel];
}

@end
