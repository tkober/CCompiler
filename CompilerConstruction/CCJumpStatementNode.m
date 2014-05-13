//
//  CCJumpStatementNode.m
//  CompilerConstruction
//
//  Created by Thorsten Kober on 08.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCJumpStatementNode.h"
#import "CCSyntaxNode+Private.h"
#import "CCIdentifierNode.h"
#import "CCExpressionNode.h"


@interface CCJumpStatementNode ()
@property (strong, nonatomic, readonly) NSString *jumpStatementTypeString;

@end

#pragma mark -
#pragma mark -
@implementation CCJumpStatementNode


#pragma mark - Customized Getters
- (NSString *)ruleName
{
    return @"jump_statement";
}


- (NSString *)jumpStatementTypeString
{
    switch (self.jumpStatementType) {
        case CCJumpStatementGOTO:
            return @"goto";
            
        case CCJumpStatementContinue:
            return @"continue";
            
        case CCJumpStatementBreak:
            return @"break";
            
        case CCJumpStatementReturn:
            return @"return";
            
        default:
            return @"UNKOWN";
    }
}



#pragma mark - Public Methods
#pragma mark | Optimization
- (CCSyntaxNode *)optimize:(id<CCOutput>)output
{
    [self setExpression:[self.expression optimize:output]];
    return self;
}


#pragma mark | Creators
+ (CCJumpStatementNode *)gotoStatementWithIdentifier:(CCIdentifierNode *)identifer
{
    CCJumpStatementNode *result = [self new];
    [result setJumpStatementType:CCJumpStatementGOTO];
    [result setIdentifier:identifer];
    return result;
}


+ (CCJumpStatementNode *)continueStatement
{
    CCJumpStatementNode *result = [self new];
    [result setJumpStatementType:CCJumpStatementContinue];
    return result;
}


+ (CCJumpStatementNode *)breakStatement
{
    CCJumpStatementNode *result = [self new];
    [result setJumpStatementType:CCJumpStatementBreak];
    return result;
}


+ (CCJumpStatementNode *)returnStatementWithExpression:(CCExpressionNode *)expression
{
    CCJumpStatementNode *result = [self new];
    [result setExpression:expression];
    [result setJumpStatementType:CCJumpStatementReturn];
    return result;
}


#pragma mark | Printing
- (void)printToOutput:(id<CCOutput>)output
          indentLevel:(NSUInteger)indentLevel
{
    [super printLine:[NSString stringWithFormat:@"%@%@<%@>", (indentLevel > 0 ? @"--" : @""), self.ruleName, self.jumpStatementTypeString]
            toOutput:output
         indentLevel:indentLevel];
    indentLevel++;
    [self.identifier printToOutput:output
                       indentLevel:indentLevel];
    [self.expression printToOutput:output
                       indentLevel:indentLevel];
}

@end
