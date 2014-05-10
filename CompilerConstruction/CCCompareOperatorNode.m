//
//  CCCompareOperatorNode.m
//  CompilerConstruction
//
//  Created by Thorsten Kober on 09.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCCompareOperatorNode.h"
#import "CCSyntaxNode+Private.h"


@implementation CCCompareOperatorNode


#pragma mark - Customized Getters
- (NSString *)ruleName
{
    return NSStringFromClass([self class]);
}



#pragma mark - Public Methods
#pragma mark | Creators
+ (CCCompareOperatorNode *)CC_LT
{
    CCCompareOperatorNode *result = [self new];
    [result setCompareOperator:CC_LT];
    return result;
}


+ (CCCompareOperatorNode *)CC_GT
{
    CCCompareOperatorNode *result = [self new];
    [result setCompareOperator:CC_GT];
    return result;
}


+ (CCCompareOperatorNode *)CC_LE
{
    CCCompareOperatorNode *result = [self new];
    [result setCompareOperator:CC_LE];
    return result;
}


+ (CCCompareOperatorNode *)CC_GE
{
    CCCompareOperatorNode *result = [self new];
    [result setCompareOperator:CC_GE];
    return result;
}


#pragma mark | Printing
- (void)printToOutput:(id<CCOutput>)output
          indentLevel:(NSUInteger)indentLevel
{
    [super printLine:self.ruleName
            toOutput:output
         indentLevel:indentLevel];
}

@end
