//
//  CCIdentifierNode.m
//  CompilerConstruction
//
//  Created by Thorsten Kober on 09.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCIdentifierNode.h"
#import "CCSyntaxNode+Private.h"


@implementation CCIdentifierNode


#pragma mark - Customized Getters
- (NSString *)ruleName
{
    return NSStringFromClass([self class]);
}



#pragma mark - Public Methods
#pragma mark | Creators
+ (CCIdentifierNode *)identifierNodeWithName:(char *)name
                                   reference:(CCSymbolReference *)reference
{
    CCIdentifierNode *result = [self new];
    [result setName:[NSString stringWithUTF8String:name]];
    [result setReference:reference];
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
