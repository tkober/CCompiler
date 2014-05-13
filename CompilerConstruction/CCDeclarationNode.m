//
//  CCDeclarationNode.m
//  CompilerConstruction
//
//  Created by Thorsten Kober on 08.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCDeclarationNode.h"
#import "CCSyntaxNode+Private.h"
#import "CCDeclarationSpecificationNode.h"
#import "CCInitDeclaratorListNode.h"


@implementation CCDeclarationNode


#pragma mark - Customized Getters
- (NSString *)ruleName
{
    return @"declaration";
}



#pragma mark - Public Methods
#pragma mark | Optimization
- (CCSyntaxNode *)optimize:(id<CCOutput>)output
{
    [self setDeclarationSpecification:[self.declarationSpecification optimize:output]];
    [self setInitializerDeclaratorList:[self.initializerDeclaratorList optimize:output]];
    if (self.declarationSpecification &&
        !self.initializerDeclaratorList) {
        [self printRemovedSelfWarningToOutput:output];
        return self.declarationSpecification;
    }
    return self;
}


#pragma mark | Creators
+ (CCDeclarationNode *)declarationNodeWithDeclarationSpecification:(CCDeclarationSpecificationNode *)declarationSpecification
                                                initDeclaratorList:(CCInitDeclaratorListNode *)initDeclaratorList
{
    CCDeclarationNode *result = [[self alloc] init];
    [result setDeclarationSpecification:declarationSpecification];
    [result setInitializerDeclaratorList:initDeclaratorList];
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
    [self printLine:@""
           toOutput:output
        indentLevel:indentLevel];
    [self.initializerDeclaratorList printToOutput:output
                                      indentLevel:indentLevel];
    
}

@end
