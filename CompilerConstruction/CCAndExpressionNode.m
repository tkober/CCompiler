//
//  CCAndExpressionNode.m
//  CompilerConstruction
//
//  Created by Thorsten Kober on 09.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCAndExpressionNode.h"
#import "CCSyntaxNode+Private.h"


@implementation CCAndExpressionNode


#pragma mark - Customized Getters
- (NSString *)ruleName
{
    return NSStringFromClass([self class]);
}



#pragma mark - Public Methods
#pragma mark | Creators
+ (CCAndExpressionNode *)andExpressionNodeWithEqualityExpression:(CCEqualityExpressionNode *)equalityExpression
                                                   andExpression:(CCAndExpressionNode *)andExpression
{
    CCAndExpressionNode *result = [self new];
    [result setEqualityExpression:equalityExpression];
    [result setAndExpression:andExpression];
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
