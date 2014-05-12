//
//  CCSyntaxNode.h
//  CompilerConstruction
//
//  Created by Thorsten Kober on 08.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "CCOutput.h"


#pragma mark | CCSyntaxNode
@interface CCSyntaxNode : NSObject
@property (strong, nonatomic, readonly) NSString *compileTimeType;


#pragma mark | Optimization
- (CCSyntaxNode *)optimize;

#pragma mark | Printing
- (void)printToOutput:(id<CCOutput>)output
          indentLevel:(NSUInteger)indentLevel;

@end
