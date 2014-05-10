//
//  CCInitializerListNode.m
//  CompilerConstruction
//
//  Created by Thorsten Kober on 09.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCInitializerListNode.h"
#import "CCSyntaxNode+Private.h"


@implementation CCInitializerListNode


#pragma mark - Customized Getters
- (NSString *)ruleName
{
    return NSStringFromClass([self class]);
}



#pragma mark - Public Methods
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
}

@end
