//
//  CCAndExpressionNode.m
//  CompilerConstruction
//
//  Created by Thorsten Kober on 09.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCAndExpressionNode.h"


@implementation CCAndExpressionNode


#pragma mark - Public Methods
#pragma mark | Creators
+ (CCAndExpressionNode *)andExpressionNodeWithEqualityExpression:(CCEqualityExpressionNode *)equalityExpression
                                                   andExpression:(CCAndExpressionNode *)andExpression
{
    CCAndExpressionNode *result = [self new];
    [result setEqualityExpression:equalityExpression];
    [result setAndExpression:andExpression];
    return result;
}

@end
