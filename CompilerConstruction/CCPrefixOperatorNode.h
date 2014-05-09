//
//  CCPrefixOperator.h
//  CompilerConstruction
//
//  Created by Thorsten Kober on 09.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCSyntaxNode.h"


typedef NS_ENUM(NSUInteger, CCPrefixOperatorType) {
    CCPrefixOperatorIncrement = 1,
    CCPrefixOperatorDecrement
};


#pragma mark - CCPrefixOperator
@interface CCPrefixOperatorNode : CCSyntaxNode
@property (assign, nonatomic) CCPrefixOperatorType operatorType;


#pragma mark | Creators


@end
