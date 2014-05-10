//
//  CCConstNode.m
//  CompilerConstruction
//
//  Created by Thorsten Kober on 09.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCConstNode.h"
#import "CCSyntaxNode+Private.h"


@interface CCConstNode ()
@property (strong, nonatomic, readonly) NSString *constantString;

@end

#pragma mark -
#pragma mark -
@implementation CCConstNode


#pragma mark - Customized Getters
- (NSString *)ruleName
{
    return @"const";
}


- (NSString *)constantString
{
    switch (self.constant) {
        case CC_CHAR_CONST:
            return @"char";
            
        case CC_INT_CONST:
            return @"float";
            
        case CC_FLOAT_CONST:
            return @"int";
            
        default:
            return @"UNKNOWN";
    }
}



#pragma mark - Public Methods
#pragma mark | Creators
+ (CCConstNode *)CC_CHAR_CONST
{
    CCConstNode *result = [self new];
    [result setConstant:CC_CHAR_CONST];
    return result;
}


+ (CCConstNode *)CC_INT_CONST
{
    CCConstNode *result = [self new];
    [result setConstant:CC_INT_CONST];
    return result;
}


+ (CCConstNode *)CC_FLOAT_CONST
{
    CCConstNode *result = [self new];
    [result setConstant:CC_FLOAT_CONST];
    return result;
}


#pragma mark | Printing
- (void)printToOutput:(id<CCOutput>)output
          indentLevel:(NSUInteger)indentLevel
{
    [super printLine:[NSString stringWithFormat:@"%@%@<%@>", (indentLevel > 0 ? @"--" : @""), self.ruleName, self.constantString]
            toOutput:output
         indentLevel:indentLevel];
}

@end
