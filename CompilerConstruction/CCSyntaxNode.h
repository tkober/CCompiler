//
//  CCSyntaxNode.h
//  CompilerConstruction
//
//  Created by Thorsten Kober on 08.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "CCOutput.h"


typedef NS_ENUM(NSUInteger, CCCompileTimeType) {
    CCCompileTimeTypeNotDeterminable = 0,
    CCCompileTimeTypeVoid,
    CCCompileTimeTypeChar,
    CCCompileTimeTypeShort,
    CCCompileTimeTypeInt,
    CCCompileTimeTypeSigned,
    CCCompileTimeTypeUnsigned,
    CCCompileTimeTypeLong,
    CCCompileTimeTypeFloat,
    CCCompileTimeTypeDouble,
};


#pragma mark | CCSyntaxNode
@interface CCSyntaxNode : NSObject
@property (strong, nonatomic, readonly) NSArray *compileTimeType;


#pragma mark | Optimization
- (CCSyntaxNode *)optimize;

#pragma mark | Printing
- (void)printToOutput:(id<CCOutput>)output
          indentLevel:(NSUInteger)indentLevel;

@end
