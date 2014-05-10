//
//  CCInitDeclaratorListNode.m
//  CompilerConstruction
//
//  Created by Thorsten Kober on 08.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCInitDeclaratorListNode.h"
#import "CCSyntaxNode+Private.h"


@implementation CCInitDeclaratorListNode


#pragma mark - Customized Getters
- (NSString *)ruleName
{
    return NSStringFromClass([self class]);
}



#pragma mark - Public Methods
#pragma mark | Creators
+ (CCInitDeclaratorListNode *)initDeclaratorListNodeWithInitDeclaratorList:(CCInitDeclaratorListNode *)initDeclaratorList
                                                            initDeclarator:(CCInitDeclaratorNode *)initDeclarator
{
    CCInitDeclaratorListNode *result = [self new];
    [result setInitDeclaratorList:initDeclaratorList];
    [result setInitDeclarator:initDeclarator];
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
}

@end
