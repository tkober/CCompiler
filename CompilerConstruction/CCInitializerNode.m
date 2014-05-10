//
//  CCInitializerNode.m
//  CompilerConstruction
//
//  Created by Thorsten Kober on 09.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCInitializerNode.h"
#import "CCSyntaxNode+Private.h"
#import "CCAssignmentExpressionNode.h"
#import "CCInitializerListNode.h"


@implementation CCInitializerNode


#pragma mark - Customized Getters
- (NSString *)ruleName
{
    return @"initializer";
}



#pragma mark - Public Methods
#pragma mark | Creators
+ (CCInitializerNode *)initializerNodeWithAssignmentExpression:(CCAssignmentExpressionNode *)assignmentExpression
                                               initializerList:(CCInitializerListNode *)initializerList
{
    CCInitializerNode *result = [self new];
    [result setAssignmentExpression:assignmentExpression];
    [result setInitializerList:initializerList];
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
    if (self.assignmentExpression) {
        [self.assignmentExpression printToOutput:output
                                     indentLevel:indentLevel];
        return;
    }
    [self.initializerList printToOutput:output
                            indentLevel:indentLevel];
}

@end
