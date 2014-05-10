//
//  CCDeclarationListNode.m
//  CompilerConstruction
//
//  Created by Thorsten Kober on 08.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCDeclarationListNode.h"
#import "CCSyntaxNode+Private.h"
#import "CCDeclarationNode.h"


@implementation CCDeclarationListNode


#pragma mark - Customized Getters
- (NSString *)ruleName
{
    return @"declaration_list";
}



#pragma mark - Public Methods
#pragma mark | Creators
+ (CCDeclarationListNode *)declarationListNodeWithDeclarationList:(CCDeclarationListNode *)declarationList
                                                      declaration:(CCDeclarationNode *)declaration
{
    CCDeclarationListNode *result = [[self alloc] init];
    [result setDeclarationList:declarationList];
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
    [self.declarationList printToOutput:output
                            indentLevel:indentLevel];
    if (self.declarationList &&
        self.declaration) {
        [self printLine:@""
               toOutput:output
            indentLevel:indentLevel];
    }
    [self.declaration printToOutput:output
                        indentLevel:indentLevel];
}

@end
