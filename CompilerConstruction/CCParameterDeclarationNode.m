//
//  CCParameterDeclarationNode.m
//  CompilerConstruction
//
//  Created by Thorsten Kober on 09.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCParameterDeclarationNode.h"
#import "CCSyntaxNode+Private.h"
#import "CCDeclarationSpecificationNode.h"
#import "CCDeclaratorNode.h"


@implementation CCParameterDeclarationNode


#pragma mark - Customized Getters
- (NSString *)ruleName
{
    return @"parameter_declaration";
}



#pragma mark - Public Methods
#pragma mark | Optimization
- (CCSyntaxNode *)optimize:(id<CCOutput>)output
{
    [self setDeclarationSpecification:[self.declarationSpecification optimize:output]];
    [self setDeclarator:[self.declarator optimize:output]];
    if (self.declarationSpecification &&
        !self.declarator) {
        [self printRemovedSelfWarningToOutput:output];
        return self.declarationSpecification;
    }
    return self;
}


#pragma mark | Creators
+ (CCParameterDeclarationNode *)parameterDeclarationNodeWithDeclarationSpecification:(CCDeclarationSpecificationNode *)declarationSepcification
                                                                          declarator:(CCDeclaratorNode *)declarator
{
    CCParameterDeclarationNode *result = [self new];
    [result setDeclarationSpecification:declarationSepcification];
    [result setDeclarator:declarator];
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
    if (self.declarationSpecification &&
        self.declarator) {
        PRINT_EMPTY_LINE(output, indentLevel);
        [self.declarator printToOutput:output
                           indentLevel:indentLevel];
    }
}

@end
