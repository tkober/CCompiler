//
//  CCCompareOperatorNode.h
//  CompilerConstruction
//
//  Created by Thorsten Kober on 09.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCSyntaxNode.h"


typedef NS_ENUM(NSUInteger, CCCompareOperator) {
    CC_LT = 1,
    CC_GT,
    CC_LE,
    CC_GE
};


#pragma mark - CCCompareOperatorNode
@interface CCCompareOperatorNode : CCSyntaxNode
@property (assign, nonatomic) CCCompareOperator compareOperator;


#pragma mark | Creators
+ (CCCompareOperatorNode *)CC_LT;
+ (CCCompareOperatorNode *)CC_GT;
+ (CCCompareOperatorNode *)CC_LE;
+ (CCCompareOperatorNode *)CC_GE;

@end
