//
//  CCDeclarationSpecificationNode.m
//  CompilerConstruction
//
//  Created by Thorsten Kober on 08.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCDeclarationSpecificationNode.h"
#import "CCSyntaxNode+Private.h"


@implementation CCDeclarationSpecificationNode


#pragma mark - Customized Getters
- (NSString *)ruleName
{
    return NSStringFromClass([self class]);
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
}

@end
