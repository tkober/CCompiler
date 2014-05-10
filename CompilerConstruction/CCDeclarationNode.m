//
//  CCDeclarationNode.m
//  CompilerConstruction
//
//  Created by Thorsten Kober on 08.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCDeclarationNode.h"
#import "CCSyntaxNode+Private.h"


@implementation CCDeclarationNode


#pragma mark - Customized Getters
- (NSString *)ruleName
{
    return NSStringFromClass([self class]);
}



#pragma mark - Public Methods
#pragma mark | Creators
+ (CCDeclarationNode *)declarationNodeWithDeclarationSpecification:(CCDeclarationSpecificationNode *)declarationSpecification
                                                initDeclaratorList:(CCInitDeclaratorListNode *)initDeclaratorList
{
    CCDeclarationNode *result = [[self alloc] init];
    [result setDeclarationSpecification:declarationSpecification];
    [result setInitDeclaratorList:initDeclaratorList];
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
