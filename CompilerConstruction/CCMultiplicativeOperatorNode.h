//
//  CCMultiplicativeOperatorNode.h
//  CompilerConstruction
//
//  Created by Thorsten Kober on 09.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCSyntaxNode.h"


typedef NS_ENUM(NSUInteger, CCMultiplicativeOperator) {
    CC_MUL_OP = 1,
    CC_DIV_OP,
    CC_MOD_OP
};


#pragma mark - CCMultiplicativeOperatorNode
@interface CCMultiplicativeOperatorNode : CCSyntaxNode
@property (assign, nonatomic) CCMultiplicativeOperator multiplicativeOperator;


#pragma mark | Creators
+ (CCMultiplicativeOperatorNode *)CC_MUL_OP;
+ (CCMultiplicativeOperatorNode *)CC_DIV_OP;
+ (CCMultiplicativeOperatorNode *)CC_MOD_OP;


@end
