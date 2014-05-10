//
//  CCAdditiveOperatorNode.m
//  CompilerConstruction
//
//  Created by Thorsten Kober on 09.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCAdditiveOperatorNode.h"
#import "CCSyntaxNode+Private.h"


@implementation CCAdditiveOperatorNode


#pragma mark - Customized Getters
- (NSString *)ruleName
{
    return NSStringFromClass([self class]);
}



#pragma mark - Public Methods
#pragma mark | Creators
+ (CCAdditiveOperatorNode *)CC_ADD_OP
{
    CCAdditiveOperatorNode *result = [self new];
    [result setAdditiveOperator:CC_ADD_OP];
    return result;
}


+ (CCAdditiveOperatorNode *)CC_SUB_OP
{
    CCAdditiveOperatorNode *result = [self new];
    [result setAdditiveOperator:CC_SUB_OP];
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
