//
//  CCLabeledStatementNode.m
//  CompilerConstruction
//
//  Created by Thorsten Kober on 08.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCLabeledStatementNode.h"
#import "CCSyntaxNode+Private.h"
#import "CCStatementNode.h"
#import "CCIdentifierNode.h"


@implementation CCLabeledStatementNode


#pragma mark - Customized Getters
- (NSString *)ruleName
{
    return @"labeled_statement";
}



#pragma mark - Public Methods
#pragma mark | Optimization
- (CCSyntaxNode *)optimize:(id<CCOutput>)output
{
    [self setStatement:[self.statement optimize:output]];
    [self setIdentifier:[self.identifier optimize:output]];
    return self;
}


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
    indentLevel++;
    [self.identifier printToOutput:output
                       indentLevel:indentLevel];
    if (self.identifier &&
        self.statement) {
        [self printLine:@""
               toOutput:output
            indentLevel:indentLevel];
    }
    [self.statement printToOutput:output
                      indentLevel:indentLevel];
}

@end
