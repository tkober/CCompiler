//
//  CCSymbolNew.m
//  CompilerConstruction
//
//  Created by Thorsten Kober on 07.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCSymbolNew.h"


@implementation CCSymbolNew


#pragma mark - Public Methods
#pragma mark | Creators
+ (CCSymbolNew *)symbolWithName:(NSString *)name
{
    return [[self alloc] initWithName:name];
}


#pragma mark | Initializer
- (id)init
{
    return [self initWithName:nil];
}


- (id)initWithName:(NSString *)name
{
    if (self = [super init]) {
        [self setName:name];
    }
    return self;
}


#pragma mark | Print
- (void)printSymbolToOutput:(id<CCOutput>)output
{
    [output printInfo:[NSString stringWithFormat:@"%@\t\t", self.name]];
    [self.references printReferenceInOutput:output];
}

@end
