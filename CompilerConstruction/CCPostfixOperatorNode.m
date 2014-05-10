//
//  CCPostfixOperatorNode.m
//  CompilerConstruction
//
//  Created by Thorsten Kober on 09.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCPostfixOperatorNode.h"
#import "CCSyntaxNode+Private.h"


@implementation CCPostfixOperatorNode


#pragma mark - Customized Getters
- (NSString *)ruleName
{
    return NSStringFromClass([self class]);
}



#pragma mark - Public Methods
#pragma mark | Creators
+ (CCPostfixOperatorNode *)CC_UNARY_INCREMENT_OP
{
    CCPostfixOperatorNode *result = [self new];
    [result setPostfixOperator:CC_UNARY_INCREMENT_OP];
    return result;
}


+ (CCPostfixOperatorNode *)CC_UNARY_DECREMENT_OP
{
    CCPostfixOperatorNode *result = [self new];
    [result setPostfixOperator:CC_UNARY_DECREMENT_OP];
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
