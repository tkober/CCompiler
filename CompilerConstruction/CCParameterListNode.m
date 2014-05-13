//
//  CCParameterListNode.m
//  CompilerConstruction
//
//  Created by Thorsten Kober on 09.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCParameterListNode.h"
#import "CCSyntaxNode+Private.h"
#import "CCParameterDeclarationNode.h"


@implementation CCParameterListNode


#pragma mark - Customized Getters
- (NSString *)ruleName
{
    return @"parameter_list";
}



#pragma mark - Public Methods
#pragma mark | Optimization
- (CCSyntaxNode *)optimize:(id<CCOutput>)output
{
    [self setParameterList:[self.parameterList optimize:output]];
    [self setParameterDeclaration:[self.parameterDeclaration optimize:output]];
    return self;
}


#pragma mark | Creators
+ (CCParameterListNode *)parameterListNodeWithParameterDeclaration:(CCParameterDeclarationNode *)parameterDeclaration
                                                     parameterList:(CCParameterListNode *)parameterList
{
    CCParameterListNode *result = [self new];
    [result setParameterDeclaration:parameterDeclaration];
    [result setParameterList:parameterList];
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
    [self.parameterList printToOutput:output
                          indentLevel:indentLevel];
    if (self.parameterList &&
        self.parameterDeclaration) {
        PRINT_EMPTY_LINE(output, indentLevel);
    }
    [self.parameterDeclaration printToOutput:output
                                 indentLevel:indentLevel];
}

@end
