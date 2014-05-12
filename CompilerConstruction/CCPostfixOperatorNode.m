//
//  CCPostfixOperatorNode.m
//  CompilerConstruction
//
//  Created by Thorsten Kober on 09.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCPostfixOperatorNode.h"
#import "CCSyntaxNode+Private.h"


@interface CCPostfixOperatorNode ()
@property (strong, nonatomic, readonly) NSString *postfixOperatorString;

@end

#pragma mark -
#pragma mark -
@implementation CCPostfixOperatorNode


#pragma mark - Customized Getters
- (NSString *)ruleName
{
    return @"postfix_operator";
}


- (NSString *)postfixOperatorString
{
    switch (self.postfixOperator) {
        case CC_UNARY_INCREMENT_OP:
            return @"'++'";
            
        case CC_UNARY_DECREMENT_OP:
            return @"'--'";
            
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
    [super printLine:[NSString stringWithFormat:@"%@%@<%@>", (indentLevel > 0 ? @"--" : @""), self.ruleName, self.postfixOperatorString]
            toOutput:output
         indentLevel:indentLevel];
}

@end
