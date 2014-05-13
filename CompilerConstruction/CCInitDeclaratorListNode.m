//
//  CCInitDeclaratorListNode.m
//  CompilerConstruction
//
//  Created by Thorsten Kober on 08.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCInitDeclaratorListNode.h"
#import "CCSyntaxNode+Private.h"
#import "CCInitDeclaratorNode.h"


@implementation CCInitDeclaratorListNode


#pragma mark - Customized Getters
- (NSString *)ruleName
{
    return @"init_declarator_list";
}



#pragma mark - Public Methods
#pragma mark | Optimization
- (CCSyntaxNode *)optimize:(id<CCOutput>)output
{
    [self setInitDeclaratorList:[self.initDeclaratorList optimize:output]];
    [self setInitializerDeclarator:[self.initializerDeclarator optimize:output]];
    if (self.initializerDeclarator &&
        !self.initDeclaratorList) {
        [self printRemovedSelfWarningToOutput:output];
        return self.initializerDeclarator;
    }
    return self;
}


#pragma mark | Creators
+ (CCInitDeclaratorListNode *)initDeclaratorListNodeWithInitDeclaratorList:(CCInitDeclaratorListNode *)initDeclaratorList
                                                            initDeclarator:(CCInitDeclaratorNode *)initDeclarator
{
    CCInitDeclaratorListNode *result = [self new];
    [result setInitDeclaratorList:initDeclaratorList];
    [result setInitializerDeclarator:initDeclarator];
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
    [self.initDeclaratorList printToOutput:output
                               indentLevel:indentLevel];
        PRINT_EMPTY_LINE(output, indentLevel);
    [self.initializerDeclarator printToOutput:output
                                  indentLevel:indentLevel];
}

@end
