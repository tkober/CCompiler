//
//  CCPrefixOperator.m
//  CompilerConstruction
//
//  Created by Thorsten Kober on 09.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCPrefixOperatorNode.h"
#import "CCSyntaxNode+Private.h"


@interface CCPrefixOperatorNode ()
@property (strong, nonatomic, readonly) NSString *operatorTypeString;

@end

#pragma mark -
#pragma mark -
@implementation CCPrefixOperatorNode


#pragma mark - Customized Getters
- (NSString *)ruleName
{
    return @"prefix_operator";
}


- (NSString *)operatorTypeString
{
    switch (self.operatorType) {
        case CCPrefixOperatorIncrement:
            return @"'++'";
            
        case CCPrefixOperatorDecrement:
            return @"'--'";
            
        default:
            return @"UNKOWN";
    }
}



#pragma mark - Public Methods
#pragma mark | Optimization
- (CCSyntaxNode *)optimize:(id<CCOutput>)output
{
    return self;
}


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
    [super printLine:[NSString stringWithFormat:@"%@%@<%@>", (indentLevel > 0 ? @"--" : @""), self.ruleName, self.operatorTypeString]
            toOutput:output
         indentLevel:indentLevel];
}

@end
