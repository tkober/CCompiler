//
//  CCDeclarationSpecificationNode.m
//  CompilerConstruction
//
//  Created by Thorsten Kober on 08.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCDeclarationSpecificationNode.h"
#import "CCSyntaxNode+Private.h"
#import "CCTypeSpecificationNode.h"


@implementation CCDeclarationSpecificationNode


#pragma mark - Customized Getters
- (NSString *)ruleName
{
    return @"declaration_specification";
}



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


#pragma mark | Printing
- (void)printToOutput:(id<CCOutput>)output
          indentLevel:(NSUInteger)indentLevel
{
    [super printLine:[NSString stringWithFormat:@"%@%@", (indentLevel > 0 ? @"--" : @""), self.ruleName]
            toOutput:output
         indentLevel:indentLevel];
    indentLevel++;
    [self.typeSpecification printToOutput:output
                              indentLevel:indentLevel];
    if (self.typeSpecification &&
        self.declarationSpecification) {
        PRINT_EMPTY_LINE(output, indentLevel);
    }
    [self.declarationSpecification printToOutput:output
                                     indentLevel:indentLevel];
}

@end
