//
//  CCLabeledStatementNode.m
//  CompilerConstruction
//
//  Created by Thorsten Kober on 08.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCLabeledStatementNode.h"
#import "CCSyntaxNode+Private.h"


@implementation CCLabeledStatementNode


#pragma mark - Customized Getters
- (NSString *)ruleName
{
    return NSStringFromClass([self class]);
}



#pragma mark - Public Methods
#pragma mark | Creators
+ (CCLabeledStatementNode *)labeledExpressionNodeWithStatement:(CCStatementNode *)statement
                                                    identifier:(CCIdentifierNode *)identifier
{
    CCLabeledStatementNode *result = [[self alloc] init];
    [result setStatement:statement];
    [result setIdentifier:identifier];
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
