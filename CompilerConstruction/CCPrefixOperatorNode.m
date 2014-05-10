//
//  CCPrefixOperator.m
//  CompilerConstruction
//
//  Created by Thorsten Kober on 09.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCPrefixOperatorNode.h"
#import "CCSyntaxNode+Private.h"


@implementation CCPrefixOperatorNode


#pragma mark - Customized Getters
- (NSString *)ruleName
{
    return NSStringFromClass([self class]);
}



#pragma mark - Public Methods
#pragma mark | Creators
+ (CCPrefixOperatorNode *)prefixIncrement
{
    CCPrefixOperatorNode *result = [self new];
    [result setOperatorType:CCPrefixOperatorIncrement];
    return result;
}


+ (CCPrefixOperatorNode *)prefixDecrement
{
    CCPrefixOperatorNode *result = [self new];
    [result setOperatorType:CCPrefixOperatorDecrement];
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
