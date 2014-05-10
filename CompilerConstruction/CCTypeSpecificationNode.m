//
//  CCTypeSpecificationNode.m
//  CompilerConstruction
//
//  Created by Thorsten Kober on 08.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCTypeSpecificationNode.h"
#import "CCSyntaxNode+Private.h"


@implementation CCTypeSpecificationNode


#pragma mark - Customized Getters
- (NSString *)ruleName
{
    return NSStringFromClass([self class]);
}



#pragma mark - Public Methods
#pragma mark | Creators
+ (CCTypeSpecificationNode *)CC_VOID
{
    CCTypeSpecificationNode *result = [self new];
    [result setTypeSpecification:CC_VOID];
    return result;
}


+ (CCTypeSpecificationNode *)CC_CHAR
{
    CCTypeSpecificationNode *result = [self new];
    [result setTypeSpecification:CC_CHAR];
    return result;
}


+ (CCTypeSpecificationNode *)CC_SHORT
{
    CCTypeSpecificationNode *result = [self new];
    [result setTypeSpecification:CC_SHORT];
    return result;
}


+ (CCTypeSpecificationNode *)CC_INT
{
    CCTypeSpecificationNode *result = [self new];
    [result setTypeSpecification:CC_INT];
    return result;
}


+ (CCTypeSpecificationNode *)CC_LONG
{
    CCTypeSpecificationNode *result = [self new];
    [result setTypeSpecification:CC_LONG];
    return result;
}


+ (CCTypeSpecificationNode *)CC_FLOAT
{
    CCTypeSpecificationNode *result = [self new];
    [result setTypeSpecification:CC_FLOAT];
    return result;
}


+ (CCTypeSpecificationNode *)CC_DOUBLE
{
    CCTypeSpecificationNode *result = [self new];
    [result setTypeSpecification:CC_DOUBLE];
    return result;
}


+ (CCTypeSpecificationNode *)CC_SIGNED
{
    CCTypeSpecificationNode *result = [self new];
    [result setTypeSpecification:CC_SIGNED];
    return result;
}


+ (CCTypeSpecificationNode *)CC_UNSIGNED
{
    CCTypeSpecificationNode *result = [self new];
    [result setTypeSpecification:CC_UNSIGNED];
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
