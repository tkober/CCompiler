//
//  CCPrimaryExpressionNode.m
//  CompilerConstruction
//
//  Created by Thorsten Kober on 09.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCPrimaryExpressionNode.h"
#import "CCSyntaxNode+Private.h"
#import "CCIdentifierNode.h"
#import "CCConstNode.h"
#import "CCStringNode.h"
#import "CCExpressionNode.h"


@implementation CCPrimaryExpressionNode


#pragma mark - Customized Getters
- (NSString *)ruleName
{
    return @"primary_expression";
}



#pragma mark - Public Methods
#pragma mark | Optimization
- (CCSyntaxNode *)optimize
{
    return self;
}


#pragma mark | Creators
+ (CCPrimaryExpressionNode *)primaryExpressionNodeWithIdentifier:(CCIdentifierNode *)identifier
{
    CCPrimaryExpressionNode *result = [self new];
    [result setIdentifier:identifier];
    return result;
}


+ (CCPrimaryExpressionNode *)primaryExpressionNodeWithConstant:(CCConstNode *)constant
{
    CCPrimaryExpressionNode *result = [self new];
    [result setConstant:constant];
    return result;
}


+ (CCPrimaryExpressionNode *)primaryExpressionNodeWithString:(CCStringNode *)string
{
    CCPrimaryExpressionNode *result = [self new];
    [result setString:string];
    return result;
}


+ (CCPrimaryExpressionNode *)primaryExpressionNodeWithExpression:(CCExpressionNode *)expression
{
    CCPrimaryExpressionNode *result = [self new];
    [result setExpression:expression];
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
    [self.identifier printToOutput:output
                       indentLevel:indentLevel];
    [self.constant printToOutput:output
                     indentLevel:indentLevel];
    [self.string printToOutput:output
                   indentLevel:indentLevel];
    [self.expression printToOutput:output
                       indentLevel:indentLevel];
}

@end
