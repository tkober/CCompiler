//
//  CCDeclaratorNode.m
//  CompilerConstruction
//
//  Created by Thorsten Kober on 09.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCDeclaratorNode.h"
#import "CCSyntaxNode+Private.h"


@implementation CCDeclaratorNode


#pragma mark - Customized Getters
- (NSString *)ruleName
{
    return NSStringFromClass([self class]);
}



#pragma mark - Public Methods
#pragma mark | Creators
+ (CCDeclaratorNode *)declaratorNodeWithDeclarator:(CCDeclaratorNode *)declarator
                                        identifier:(CCIdentifierNode *)identifier
                                     parameterList:(CCParameterListNode *)parameterList
{
    CCDeclaratorNode *result = [self new];
    [result setDelcarator:declarator];
    [result setIdentifier:identifier];
    [result setParameterList:parameterList];
    return result;
}


#pragma mark | Printing
- (void)printToOutput:(id<CCOutput>)output
          indentLevel:(NSUInteger)indentLevel
{
    [super printLine:self.ruleName
            toOutput:output
         indentLevel:indentLevel];
}

@end
