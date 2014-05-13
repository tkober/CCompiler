//
//  CCTranslationUnitNode.m
//  CompilerConstruction
//
//  Created by Thorsten Kober on 08.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCTranslationUnitNode.h"
#import "CCSyntaxNode+Private.h"
#import "CCExternalDeclarationNode.h"


@implementation CCTranslationUnitNode


#pragma mark - Customized Getters
- (NSString *)ruleName
{
    return @"translation_unit";
}



#pragma mark - Public Methods
#pragma mark | Optimization
- (CCSyntaxNode *)optimize:(id<CCOutput>)output
{
    if (self.externalDeclaration) {
        [self setExternalDeclaration:[self.externalDeclaration optimize:output]];
        [self setTranslationUnit:[self.translationUnit optimize:output]];
        return self;
    } else {
        [self printRemovedSelfWarningToOutput:output];
        return [self.translationUnit optimize:output];
    }
}


#pragma mark | Creators
+ (CCTranslationUnitNode *)translationUnitWith:(CCExternalDeclarationNode *)externalDeclaration
                               translationUnit:(CCTranslationUnitNode *)translationUnit
{
    CCTranslationUnitNode *resut = [[self alloc] init];
    [resut setExternalDeclaration:externalDeclaration];
    [resut setTranslationUnit:translationUnit];
    return resut;
}


#pragma mark | Printing
- (void)printToOutput:(id<CCOutput>)output
          indentLevel:(NSUInteger)indentLevel
{
    [super printLine:[NSString stringWithFormat:@"%@%@", (indentLevel > 0 ? @"--" : @""), self.ruleName]
            toOutput:output
         indentLevel:indentLevel];
    indentLevel++;
    [self.translationUnit printToOutput:output
                            indentLevel:indentLevel];
    if (self.translationUnit &&
        self.externalDeclaration) {
        [self printLine:@""
               toOutput:output
            indentLevel:indentLevel];
    }
    [self.externalDeclaration printToOutput:output
                                indentLevel:indentLevel];
}

@end
