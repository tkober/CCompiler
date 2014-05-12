//
//  CCStringNode.m
//  CompilerConstruction
//
//  Created by Thorsten Kober on 09.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCStringNode.h"
#import "CCSyntaxNode+Private.h"


@implementation CCStringNode


#pragma mark - Customized Getters
- (NSString *)ruleName
{
    return @"string";
}



#pragma mark - Public Methods
#pragma mark | Optimization
- (CCSyntaxNode *)optimize
{
    return self;
}


#pragma mark | Creators
+ (CCStringNode *)stringNodeWithValue:(char *)value
{
    CCStringNode *result = [self new];
    [result setValue:[NSString stringWithUTF8String:value]];
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
