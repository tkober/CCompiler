//
//  CCConstNode.h
//  CompilerConstruction
//
//  Created by Thorsten Kober on 09.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCSyntaxNode.h"


typedef NS_ENUM(NSUInteger, CCConst) {
    CC_CHAR_CONST = 1,
    CC_INT_CONST,
    CC_FLOAT_CONST
};


#pragma mark - CCConstNode
@interface CCConstNode : CCSyntaxNode
@property (strong, nonatomic) NSNumber *value;
@property (assign, nonatomic) CCConst constant;


#pragma mark | Creators
+ (CCConstNode *)CC_CHAR_CONST;
+ (CCConstNode *)CC_INT_CONST;
+ (CCConstNode *)CC_FLOAT_CONST;


@end
