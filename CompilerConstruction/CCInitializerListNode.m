//
//  CCInitializerListNode.m
//  CompilerConstruction
//
//  Created by Thorsten Kober on 09.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCInitializerListNode.h"
#import "CCSyntaxNode+Private.h"
#import "CCInitializerNode.h"


@implementation CCInitializerListNode


#pragma mark - Customized Getters
- (NSString *)ruleName
{
    return @"initializer_list";
}



#pragma mark - Public Methods
#pragma mark | Optimization
- (CCSyntaxNode *)optimize:(id<CCOutput>)output
{
    [self setInitializerList:[self.initializerList optimize:output]];
    [self setInitializer:[self.initializer optimize:output]];
    if (self.initializer &&
        !self.initializerList) {
        [self printRemovedSelfWarningToOutput:output];
        return self.initializer;
    }
    return self;
}


#pragma mark | Creators
+ (CCInitializerListNode *)initializerListNodeWithInitializer:(CCInitializerNode *)initializer
                                              initializerList:(CCInitializerListNode *)initializerList
{
    CCInitializerListNode *result = [self new];
    [result setInitializer:initializer];
    [result setInitializerList:initializerList];
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
    [self.initializerList printToOutput:output
                            indentLevel:indentLevel];
    if (self.initializerList &&
        self.initializer) {
        PRINT_EMPTY_LINE(output, indentLevel);
    }
    [self.initializer printToOutput:output
                        indentLevel:indentLevel];
}

@end
