//
//  CCTypeSpecificationNode.h
//  CompilerConstruction
//
//  Created by Thorsten Kober on 08.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCSyntaxNode.h"


typedef NS_ENUM(NSUInteger, CCTypeSpecification) {
    CC_VOID = 1,
    CC_CHAR,
    CC_SHORT,
    CC_INT,
    CC_LONG,
    CC_FLOAT,
    CC_DOUBLE,
    CC_SIGNED,
    CC_UNSIGNED
};


#pragma mark - CCTypeSpecificationNode
@interface CCTypeSpecificationNode : CCSyntaxNode
@property (assign, nonatomic) CCTypeSpecification typeSpecification;


#pragma mark | Creators

@end
