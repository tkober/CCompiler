//
//  CCSymbol.h
//  CompilerConstruction
//
//  Created by Thorsten Kober on 07.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "CCSymbolReference.h"
#import "CCOutput.h"


#pragma mark - CCSymbolNew
@interface CCSymbol : NSObject
@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) CCSymbolReference *references;


#pragma mark | Creators
+ (CCSymbol *)symbolWithName:(NSString *)name;


#pragma mark | Initializer
- (id)initWithName:(NSString *)name;


#pragma mark | Print
- (void)printSymbolToOutput:(id<CCOutput>)output;

@end
