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
            return @"int";
            
        case CC_FLOAT_CONST:
            return @"float";
            
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
    [super printLine:[NSString stringWithFormat:@"%@%@<type=%@, value=%@>", (indentLevel > 0 ? @"--" : @""), self.ruleName, self.constantString, self.value]
            toOutput:output
         indentLevel:indentLevel];
}

@end
