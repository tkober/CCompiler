//
//  CCAdditiveOperatorNode.h
//  CompilerConstruction
//
//  Created by Thorsten Kober on 09.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCSyntaxNode.h"


typedef NS_ENUM(NSUInteger, CCAdditiveOperator) {
    CC_ADD_OP = 1,
    CC_SUB_OP
};


#pragma mark - CCAdditiveOperatorNode
@interface CCAdditiveOperatorNode : CCSyntaxNode
@property (assign, nonatomic) CCAdditiveOperator additiveOperator;


#pragma mark | Creators
+ (CCAdditiveOperatorNode *)CC_ADD_OP;
+ (CCAdditiveOperatorNode *)CC_SUB_OP;


@end
