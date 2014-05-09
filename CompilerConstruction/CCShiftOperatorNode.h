//
//  CCShiftOperatorNode.h
//  CompilerConstruction
//
//  Created by Thorsten Kober on 09.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCSyntaxNode.h"


typedef NS_ENUM(NSUInteger, CCShiftOperator) {
    CC_SHIFT_LEFT_OP = 1,
    CC_SHIFT_RIGTH_OP
};


#pragma mark - CCShiftOperatorNode
@interface CCShiftOperatorNode : CCSyntaxNode
@property (assign, nonatomic) CCShiftOperator shiftOperator;


#pragma mark | Creators


@end
