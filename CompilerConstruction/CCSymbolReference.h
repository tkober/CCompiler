//
//  CCSymbolReference.h
//  CompilerConstruction
//
//  Created by Thorsten Kober on 07.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "CCOutput.h"


@class CCSymbol;


#pragma mark - CCSymbolReference
@interface CCSymbolReference : NSObject
@property (strong, nonatomic) NSString *fileName;
@property (strong, nonatomic) NSNumber *line;
@property (strong, nonatomic) CCSymbol *symbol;
@property (strong, nonatomic) CCSymbolReference *successor;


#pragma mark | Creators
+ (CCSymbolReference *)symbolReferenceInFile:(NSString *)fileName
                                      atLine:(NSNumber *)line;


#pragma mark | Initializer
- (id)initInFile:(NSString *)fileName
          atLine:(NSNumber *)line;


#pragma mark | Print
- (NSString *)printReferenceInOutput:(id<CCOutput>)output;

@end
