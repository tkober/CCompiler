//
//  CCIdentifierNode.m
//  CompilerConstruction
//
//  Created by Thorsten Kober on 09.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCIdentifierNode.h"
#import "CCSyntaxNode+Private.h"
#import "CCSymbolReference.h"


@implementation CCIdentifierNode


#pragma mark - Customized Getters
- (NSString *)ruleName
{
    return @"identifier";
}



#pragma mark - Public Methods
#pragma mark | Optimization
- (CCSyntaxNode *)optimize
{
    return self;
}


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
    [super printLine:[NSString stringWithFormat:@"%@%@<%@>", (indentLevel > 0 ? @"--" : @""), self.ruleName, self.name]
            toOutput:output
         indentLevel:indentLevel];
}

@end
