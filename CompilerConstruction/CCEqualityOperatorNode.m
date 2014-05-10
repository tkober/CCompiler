//
//  CCEqualityOperatorNode.m
//  CompilerConstruction
//
//  Created by Thorsten Kober on 09.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCEqualityOperatorNode.h"
#import "CCSyntaxNode+Private.h"


@interface CCEqualityOperatorNode ()
@property (strong, nonatomic, readonly) NSString *equalityOperatorString;

@end

#pragma mark -
#pragma mark -
@implementation CCEqualityOperatorNode


#pragma mark - Customized Getters
- (NSString *)ruleName
{
    return @"equality_operator";
}


- (NSString *)equalityOperatorString
{
    switch (self.equalityOperator) {
        case CC_EQUAL_OP:
            return @"'=='";
            
        case CC_NOT_EQUAL_OP:
            return @"'!='";
            
        default:
            return @"UNKNOWN";
    }
}



#pragma mark - Public Methods
#pragma mark | Creators
+ (CCEqualityOperatorNode *)CC_EQUAL_OP
{
    CCEqualityOperatorNode *result = [self new];
    [result setEqualityOperator:CC_EQUAL_OP];
    return result;
}


+ (CCEqualityOperatorNode *)CC_NOT_EQUAL_OP
{
    CCEqualityOperatorNode *result = [self new];
    [result setEqualityOperator:CC_NOT_EQUAL_OP];
    return result;
}


#pragma mark | Printing
- (void)printToOutput:(id<CCOutput>)output
          indentLevel:(NSUInteger)indentLevel
{
    [super printLine:[NSString stringWithFormat:@"%@%@<%@>", (indentLevel > 0 ? @"--" : @""), self.ruleName, self.equalityOperatorString]
            toOutput:output
         indentLevel:indentLevel];
}

@end
