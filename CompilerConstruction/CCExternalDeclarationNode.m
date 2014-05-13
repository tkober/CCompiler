//
//  CCExternalDeclarationNode.m
//  CompilerConstruction
//
//  Created by Thorsten Kober on 08.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCExternalDeclarationNode.h"
#import "CCSyntaxNode+Private.h"
#import "CCFunctionDefinitionNode.h"
#import "CCDeclarationNode.h"


@implementation CCExternalDeclarationNode


#pragma mark - Customized Getters
- (NSString *)ruleName
{
    return @"external_declaration";
}



#pragma mark - Public Methods
#pragma mark | Optimization
- (CCSyntaxNode *)optimize:(id<CCOutput>)output
{
    [self setFunctionDefinition:[self.functionDefinition optimize:output]];
    [self setDeclaration:[self.declaration optimize:output]];
    if (self.functionDefinition &&
        !self.declaration) {
        [self printRemovedSelfWarningToOutput:output];
        return self.functionDefinition;
    } else if (self.declaration &&
               !self.functionDefinition) {
        [self printRemovedSelfWarningToOutput:output];
        return self.declaration;
    }
    return self;
}


#pragma mark | Creators
+ (CCExternalDeclarationNode *)functionDefinition:(CCFunctionDefinitionNode *)functionDefinition
{
    CCExternalDeclarationNode *result = [[self alloc] init];
    [result setFunctionDefinition:functionDefinition];
    return result;
}


+ (CCExternalDeclarationNode *)declaration:(CCDeclarationNode *)declaration
{
    CCExternalDeclarationNode *result = [[self alloc] init];
    [result setDeclaration:declaration];
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
    if (self.functionDefinition) {
        [self.functionDefinition printToOutput:output
                                   indentLevel:indentLevel];
        return;
    } else if (self.declaration) {
        [self.declaration printToOutput:output
                            indentLevel:indentLevel];
        return;
    }
}

@end
