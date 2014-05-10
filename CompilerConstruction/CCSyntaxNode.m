//
//  CCSyntaxNode.m
//  CompilerConstruction
//
//  Created by Thorsten Kober on 08.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCSyntaxNode.h"
#import "CCSyntaxNode+Private.h"


@implementation CCSyntaxNode


#pragma mark - Customized Getters
- (NSString *)ruleName
{
    return @"<ABSTRACT_SYNTAX_NODE>";
}



#pragma mark - Private Methods
#pragma mark | Printing
- (void)printLine:(NSString *)line
         toOutput:(id<CCOutput>)output
      indentLevel:(NSUInteger)indentLevel
{
    for (NSUInteger i = 0; i < indentLevel; i++) {
        [output printResult:@"\t|"];
    }
    [output printResult:[NSString stringWithFormat:@"%@%@\n", (indentLevel > 0 ? @"--" : @""), line]];
}



#pragma mark - Public Methods
#pragma mark | Printing
- (void)printToOutput:(id<CCOutput>)output
          indentLevel:(NSUInteger)indentLevel
{
    [self printLine:self.ruleName
           toOutput:output
        indentLevel:indentLevel];
}

@end