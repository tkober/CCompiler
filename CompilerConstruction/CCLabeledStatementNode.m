//
//  CCLabeledStatementNode.m
//  CompilerConstruction
//
//  Created by Thorsten Kober on 08.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCLabeledStatementNode.h"


@implementation CCLabeledStatementNode


#pragma mark - Public Methods
#pragma mark | Creators
+ (CCLabeledStatementNode *)labeledExpressionNodeWithStatement:(CCStatementNode *)statement
                                                    identifier:(CCIdentifierNode *)identifier
{
    CCLabeledStatementNode *result = [[self alloc] init];
    [result setStatement:statement];
    [result setIdentifier:identifier];
    return result;
}

@end
