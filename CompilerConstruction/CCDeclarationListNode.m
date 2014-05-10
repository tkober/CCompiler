//
//  CCDeclarationListNode.m
//  CompilerConstruction
//
//  Created by Thorsten Kober on 08.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCDeclarationListNode.h"
#import "CCSyntaxNode+Private.h"


@implementation CCDeclarationListNode


#pragma mark - Customized Getters
- (NSString *)ruleName
{
    return NSStringFromClass([self class]);
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
}

@end
