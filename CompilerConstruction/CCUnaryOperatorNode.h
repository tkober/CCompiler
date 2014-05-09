//
//  CCUnaryOperatorNode.h
//  CompilerConstruction
//
//  Created by Thorsten Kober on 09.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCSyntaxNode.h"
#import "CCMultiplicativeOperatorNode.h"


typedef NS_ENUM(NSUInteger, CCUnaryOperator) {
    CC_UNARY_AND_OP = 1,
    CC_UNARY_MUL_OP,
    CC_UNARY_ADD_OP,
    CC_UNARY_SUB_OP,
    CC_UNARY_BITWISE_NOT_OP,
    CC_UNARY_NOT_OP,
};


#pragma mark - CCUnaryOperatorNode
@interface CCUnaryOperatorNode : CCSyntaxNode
@property (assign, nonatomic) CCUnaryOperator unaryOperator;

@end
