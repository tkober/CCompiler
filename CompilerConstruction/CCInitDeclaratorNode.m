//
//  CCInitDeclaratorNode.m
//  CompilerConstruction
//
//  Created by Thorsten Kober on 08.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCInitDeclaratorNode.h"
#import "CCSyntaxNode+Private.h"


@implementation CCInitDeclaratorNode


#pragma mark - Customized Getters
- (NSString *)ruleName
{
    return NSStringFromClass([self class]);
}



#pragma mark - Public Methods
#pragma mark | Creators
+ (CCInitDeclaratorNode *)initDeclaratorNodeWithDeclarator:(CCDeclaratorNode *)declarator
                                               initializer:(CCInitializerNode *)initializer
{
    CCInitDeclaratorNode *result = [self new];
    [result setDeclarator:declarator];
    [result setInitializer:initializer];
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
