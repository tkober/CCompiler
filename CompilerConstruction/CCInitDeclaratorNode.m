//
//  CCInitDeclaratorNode.m
//  CompilerConstruction
//
//  Created by Thorsten Kober on 08.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCInitDeclaratorNode.h"
#import "CCSyntaxNode+Private.h"
#import "CCDeclaratorNode.h"
#import "CCInitializerNode.h"


@implementation CCInitDeclaratorNode


#pragma mark - Customized Getters
- (NSString *)ruleName
{
    return @"init_declarator";
}



#pragma mark - Public Methods
#pragma mark | Optimization
- (CCSyntaxNode *)optimize:(id<CCOutput>)output
{
    [self setDeclarator:[self.declarator optimize:output]];
    [self setInitializer:[self.initializer optimize:output]];
    if (self.declarator &&
        !self.initializer) {
        [self printRemovedSelfWarningToOutput:output];
        return self.declarator;
    }
    return self;
}


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
    [self.declarator printToOutput:output
                       indentLevel:indentLevel];
    if (self.initializer) {
        PRINT_EMPTY_LINE(output, indentLevel);
        [self.initializer printToOutput:output
                            indentLevel:indentLevel];
    }
}

@end
