//
//  CCUnaryOperatorNode.h
//  CompilerConstruction
//
//  Created by Thorsten Kober on 09.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCSyntaxNode.h"


typedef NS_ENUM(NSUInteger, CCUnaryOperator) {
    CC_AND_OP = 1,
    CC_MUL_OP,
    CC_ADD_OP,
    CC_SUB_OP,
    CC_BITWISE_NOT_OP,
    CC_NOT_OP,
};


#pragma mark - CCUnaryOperatorNode
@interface CCUnaryOperatorNode : CCSyntaxNode
@property (assign, nonatomic) CCUnaryOperator unaryOperator;

@end
