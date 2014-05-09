//
//  CCEqualityOperatorNode.h
//  CompilerConstruction
//
//  Created by Thorsten Kober on 09.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCSyntaxNode.h"


typedef NS_ENUM(NSUInteger, CCEqualityOperator) {
    CC_EQUAL_OP = 1,
    CC_NOT_EQUAL_OP
};


#pragma mark - CCEqualityOperatorNode
@interface CCEqualityOperatorNode : CCSyntaxNode
@property (assign, nonatomic) CCEqualityOperator equalityOperator;


#pragma mark | Creators


@end
