//
//  CCSyntaxNode+Private.h
//  CompilerConstruction
//
//  Created by Thorsten Kober on 10.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCSyntaxNode.h"


#pragma mark - CCSyntaxNode+Private
@interface CCSyntaxNode (Private)
@property (strong, nonatomic, readonly) NSString *ruleName;


#pragma mark | Printing
- (void)printLine:(NSString *)line
         toOutput:(id<CCOutput>)output
      indentLevel:(NSUInteger)indentLevel;

@end
