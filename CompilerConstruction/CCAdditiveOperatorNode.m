//
//  CCAdditiveOperatorNode.m
//  CompilerConstruction
//
//  Created by Thorsten Kober on 09.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCAdditiveOperatorNode.h"
#import "CCSyntaxNode+Private.h"


@interface CCAdditiveOperatorNode ()
@property (strong, nonatomic, readonly) NSString *additiveOperatorString;

@end

#pragma mark -
#pragma mark -
@implementation CCAdditiveOperatorNode


#pragma mark - Customized Getters
- (NSString *)ruleName
{
    return @"additive_operator";
}


- (NSString *)additiveOperatorString
{
    switch (self.additiveOperator) {
        case CC_ADD_OP:
            return @"'+'";
            
        case CC_SUB_OP:
            return @"'-'";
            
        default:
            return @"UNKNOWN";
    }
}



#pragma mark - Public Methods
#pragma mark | Optimization
- (CCSyntaxNode *)optimize
{
    return self;
}


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
    [super printLine:[NSString stringWithFormat:@"%@%@<%@>", (indentLevel > 0 ? @"--" : @""), self.ruleName, self.additiveOperatorString]
            toOutput:output
         indentLevel:indentLevel];
}

@end
