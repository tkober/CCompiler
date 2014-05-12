//
//  CCDeclaratorNode.m
//  CompilerConstruction
//
//  Created by Thorsten Kober on 09.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCDeclaratorNode.h"
#import "CCSyntaxNode+Private.h"
#import "CCParameterListNode.h"
#import "CCIdentifierNode.h"


@implementation CCDeclaratorNode


#pragma mark - Customized Getters
- (NSString *)ruleName
{
    return @"declarator";
}



#pragma mark - Public Methods
#pragma mark | Optimization
- (CCSyntaxNode *)optimize
{
    return self;
}


#pragma mark | Creators
+ (CCDeclaratorNode *)declaratorNodeWithDeclarator:(CCDeclaratorNode *)declarator
                                        identifier:(CCIdentifierNode *)identifier
                                     parameterList:(CCParameterListNode *)parameterList
{
    CCDeclaratorNode *result = [self new];
    [result setDelcarator:declarator];
    [result setIdentifier:identifier];
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
    if (self.identifier) {
        [self.identifier printToOutput:output
                           indentLevel:indentLevel];
        return;
    }
    [self.delcarator printToOutput:output
                       indentLevel:indentLevel];
    if (self.parameterList) {
        PRINT_EMPTY_LINE(output, indentLevel);
    }
    [self.parameterList printToOutput:output
                          indentLevel:indentLevel];
}

@end
