//
//  CCPostfixOperatorNode.h
//  CompilerConstruction
//
//  Created by Thorsten Kober on 09.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCSyntaxNode.h"


typedef NS_ENUM(NSUInteger, CCPostfixOperator) {
    CC_UNARY_INCREMENT_OP = 1,
    CC_UNARY_DECREMENT_OP
};


#pragma mark - CCPostfixOperatorNode
@interface CCPostfixOperatorNode : CCSyntaxNode

@end
