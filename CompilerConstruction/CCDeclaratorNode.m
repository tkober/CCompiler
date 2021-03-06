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
- (CCSyntaxNode *)optimize:(id<CCOutput>)output
{
    [self setIdentifier:[self.identifier optimize:output]];
    [self setDelcarator:[self.delcarator optimize:output]];
    [self setParameterList:[self.parameterList optimize:output]];
    if (self.identifier &&
        !self.delcarator &&
        !self.parameterList) {
        [self printRemovedSelfWarningToOutput:output];
        return self.identifier;
    }
    if (!self.identifier &&
        self.delcarator &&
        !self.parameterList) {
        [self printRemovedSelfWarningToOutput:output];
        return self.delcarator;
    }
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
