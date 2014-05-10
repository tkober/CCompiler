//
//  CCShiftOperatorNode.m
//  CompilerConstruction
//
//  Created by Thorsten Kober on 09.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCShiftOperatorNode.h"
#import "CCSyntaxNode+Private.h"


@interface CCShiftOperatorNode ()
@property (strong, nonatomic, readonly) NSString *shiftOperatorString;

@end

#pragma mark -
#pragma mark -
@implementation CCShiftOperatorNode


#pragma mark - Customized Getters
- (NSString *)ruleName
{
    return @"shift_operator";
}


- (NSString *)shiftOperatorString
{
    switch (self.shiftOperator) {
        case CC_SHIFT_LEFT_OP:
            return @"'<<'";
            
        case CC_SHIFT_RIGTH_OP:
            return @"'>>'";
            
        default:
            return @"UNKNOWN";
    }
}



#pragma mark - Public Methods
#pragma mark | Creators
+ (CCShiftOperatorNode *)CC_SHIFT_LEFT_OP
{
    CCShiftOperatorNode *result = [self new];
    [result setShiftOperator:CC_SHIFT_LEFT_OP];
    return result;
}


+ (CCShiftOperatorNode *)CC_SHIFT_RIGTH_OP
{
    CCShiftOperatorNode *result = [self new];
    [result setShiftOperator:CC_SHIFT_RIGTH_OP];
    return result;
}


#pragma mark | Printing
- (void)printToOutput:(id<CCOutput>)output
          indentLevel:(NSUInteger)indentLevel
{
    [super printLine:[NSString stringWithFormat:@"%@%@<%@>", (indentLevel > 0 ? @"--" : @""), self.ruleName, self.shiftOperatorString]
            toOutput:output
         indentLevel:indentLevel];
}

@end
