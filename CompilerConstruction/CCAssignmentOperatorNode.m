//
//  CCAssignmentOperatorNode.m
//  CompilerConstruction
//
//  Created by Thorsten Kober on 09.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCAssignmentOperatorNode.h"
#import "CCSyntaxNode+Private.h"


@interface CCAssignmentOperatorNode ()
@property (strong, nonatomic, readonly) NSString *assignmentOperatorString;

@end

#pragma mark -
#pragma mark -
@implementation CCAssignmentOperatorNode


#pragma mark - Customized Getters
- (NSString *)ruleName
{
    return @"assignment_operator";
}


- (NSString *)assignmentOperatorString
{
    switch (self.assignmentOperator) {
        case CC_ASSIGN_OP:
            return @"'='";
            
        case CC_ASSIGN_MUL_OP:
            return @"'*='";
            
        case CC_ASSIGN_DIV_OP:
            return @"'/='";
            
        case CC_ASSIGN_MOD_OP:
            return @"'%='";
            
        case CC_ASSIGN_ADD_OP:
            return @"'+='";
            
        case CC_ASSIGN_SUB_OP:
            return @"'-='";
            
        case CC_ASSIGN_SHIFT_LEFT_OP:
            return @"'<<='";
            
        case CC_ASSIGN_SHIFT_RIGHT_OP:
            return @"'>>='";
            
        case CC_ASSIGN_BITWISE_AND_OP:
            return @"'&='";
            
        case CC_ASSIGN_BITWISE_XOR_OP:
            return @"'^='";
            
        case CC_ASSIGN_BITWISE_OR_OP:
            return @"'|='";
            
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
+ (CCAssignmentOperatorNode *)CC_ASSIGN_OP
{
    CCAssignmentOperatorNode *result = [self new];
    [result setAssignmentOperator:CC_ASSIGN_OP];
    return result;
}


+ (CCAssignmentOperatorNode *)CC_ASSIGN_MUL_OP
{
    CCAssignmentOperatorNode *result = [self new];
    [result setAssignmentOperator:CC_ASSIGN_MUL_OP];
    return result;
}


+ (CCAssignmentOperatorNode *)CC_ASSIGN_DIV_OP
{
    CCAssignmentOperatorNode *result = [self new];
    [result setAssignmentOperator:CC_ASSIGN_DIV_OP];
    return result;
}


+ (CCAssignmentOperatorNode *)CC_ASSIGN_MOD_OP
{
    CCAssignmentOperatorNode *result = [self new];
    [result setAssignmentOperator:CC_ASSIGN_MOD_OP];
    return result;
}


+ (CCAssignmentOperatorNode *)CC_ASSIGN_ADD_OP
{
    CCAssignmentOperatorNode *result = [self new];
    [result setAssignmentOperator:CC_ASSIGN_ADD_OP];
    return result;
}


+ (CCAssignmentOperatorNode *)CC_ASSIGN_SUB_OP
{
    CCAssignmentOperatorNode *result = [self new];
    [result setAssignmentOperator:CC_ASSIGN_SUB_OP];
    return result;
}


+ (CCAssignmentOperatorNode *)CC_ASSIGN_SHIFT_LEFT_OP
{
    CCAssignmentOperatorNode *result = [self new];
    [result setAssignmentOperator:CC_ASSIGN_SHIFT_LEFT_OP];
    return result;
}


+ (CCAssignmentOperatorNode *)CC_ASSIGN_SHIFT_RIGHT_OP
{
    CCAssignmentOperatorNode *result = [self new];
    [result setAssignmentOperator:CC_ASSIGN_SHIFT_RIGHT_OP];
    return result;
}


+ (CCAssignmentOperatorNode *)CC_ASSIGN_BITWISE_AND_OP
{
    CCAssignmentOperatorNode *result = [self new];
    [result setAssignmentOperator:CC_ASSIGN_BITWISE_AND_OP];
    return result;
}


+ (CCAssignmentOperatorNode *)CC_ASSIGN_BITWISE_XOR_OP
{
    CCAssignmentOperatorNode *result = [self new];
    [result setAssignmentOperator:CC_ASSIGN_BITWISE_XOR_OP];
    return result;
}


+ (CCAssignmentOperatorNode *)CC_ASSIGN_BITWISE_OR_OP
{
    CCAssignmentOperatorNode *result = [self new];
    [result setAssignmentOperator:CC_ASSIGN_BITWISE_OR_OP];
    return result;
}


#pragma mark | Printing
- (void)printToOutput:(id<CCOutput>)output
          indentLevel:(NSUInteger)indentLevel
{
    [super printLine:[NSString stringWithFormat:@"%@%@<%@>", (indentLevel > 0 ? @"--" : @""), self.ruleName, self.assignmentOperatorString]
            toOutput:output
         indentLevel:indentLevel];
}

@end
