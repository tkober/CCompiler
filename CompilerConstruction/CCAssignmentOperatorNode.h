//
//  CCAssignmentOperatorNode.h
//  CompilerConstruction
//
//  Created by Thorsten Kober on 09.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCSyntaxNode.h"


typedef NS_ENUM(NSUInteger, CCAssignmentOperator) {
    CC_ASSIGN_OP = 1,
    CC_ASSIGN_MUL_OP,
    CC_ASSIGN_DIV_OP,
    CC_ASSIGN_MOD_OP,
    CC_ASSIGN_ADD_OP,
    CC_ASSIGN_SUB_OP,
    CC_ASSIGN_SHIFT_LEFT_OP,
    CC_ASSIGN_SHIFT_RIGHT_OP,
    CC_ASSIGN_BITWISE_AND_OP,
    CC_ASSIGN_BITWISE_XOR_OP,
    CC_ASSIGN_BITWISE_OR_OP
};


#pragma mark - CCAssignmentOperatorNode
@interface CCAssignmentOperatorNode : CCSyntaxNode
@property (assign, nonatomic) CCAssignmentOperator assignmentOperator;


#pragma mark | Creators
+ (CCAssignmentOperatorNode *)CC_ASSIGN_OP;
+ (CCAssignmentOperatorNode *)CC_ASSIGN_MUL_OP;
+ (CCAssignmentOperatorNode *)CC_ASSIGN_DIV_OP;
+ (CCAssignmentOperatorNode *)CC_ASSIGN_MOD_OP;
+ (CCAssignmentOperatorNode *)CC_ASSIGN_ADD_OP;
+ (CCAssignmentOperatorNode *)CC_ASSIGN_SUB_OP;
+ (CCAssignmentOperatorNode *)CC_ASSIGN_SHIFT_LEFT_OP;
+ (CCAssignmentOperatorNode *)CC_ASSIGN_SHIFT_RIGHT_OP;
+ (CCAssignmentOperatorNode *)CC_ASSIGN_BITWISE_AND_OP;
+ (CCAssignmentOperatorNode *)CC_ASSIGN_BITWISE_XOR_OP;
+ (CCAssignmentOperatorNode *)CC_ASSIGN_BITWISE_OR_OP;

@end
