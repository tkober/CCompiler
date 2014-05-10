//
//  CCParameterDeclarationNode.m
//  CompilerConstruction
//
//  Created by Thorsten Kober on 09.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCParameterDeclarationNode.h"
#import "CCSyntaxNode+Private.h"


@implementation CCParameterDeclarationNode


#pragma mark - Customized Getters
- (NSString *)ruleName
{
    return NSStringFromClass([self class]);
}



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


#pragma mark | Printing
- (void)printToOutput:(id<CCOutput>)output
          indentLevel:(NSUInteger)indentLevel
{
    [super printLine:self.ruleName
            toOutput:output
         indentLevel:indentLevel];
}

@end
