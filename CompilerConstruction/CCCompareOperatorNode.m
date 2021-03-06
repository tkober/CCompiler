//
//  CCCompareOperatorNode.m
//  CompilerConstruction
//
//  Created by Thorsten Kober on 09.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCCompareOperatorNode.h"
#import "CCSyntaxNode+Private.h"


@interface CCCompareOperatorNode ()
@property (strong, nonatomic, readonly) NSString *compareOperatorString;

@end

#pragma mark -
#pragma mark -
@implementation CCCompareOperatorNode


#pragma mark - Customized Getters
- (NSString *)ruleName
{
    return @"compare_operator";
}


- (NSString *)compareOperatorString
{
    switch (self.compareOperator) {
        case CC_LT:
            return @"'<'";
            
        case CC_GT:
            return @"'>'";
            
        case CC_LE:
            return @"'<='";
            
        case CC_GE:
            return @"'>='";
            
        default:
            return @"UNKNOWN";
    }
}



#pragma mark - Public Methods
#pragma mark | Optimization
- (CCSyntaxNode *)optimize:(id<CCOutput>)output
{
    return self;
}


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
    [super printLine:[NSString stringWithFormat:@"%@%@<%@>", (indentLevel > 0 ? @"--" : @""), self.ruleName, self.compareOperatorString]
            toOutput:output
         indentLevel:indentLevel];
}

@end
