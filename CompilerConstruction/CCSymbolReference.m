//
//  CCSymbolReference.m
//  CompilerConstruction
//
//  Created by Thorsten Kober on 07.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCSymbolReference.h"


@implementation CCSymbolReference


#pragma mark - Public Methods
#pragma mark | Creators
+ (CCSymbolReference *)symbolReferenceInFile:(NSString *)fileName
                                      atLine:(NSNumber *)line
{
    return [[self alloc] initInFile:fileName
                             atLine:line];
}


#pragma mark | Initializer
- (id)init
{
    return [self initInFile:nil
                     atLine:nil];
}


- (id)initInFile:(NSString *)fileName
          atLine:(NSNumber *)line
{
    if (self = [super init]) {
        [self setFileName:fileName];
        [self setLine:line];
    }
    return self;
}


#pragma mark | Print
- (NSString *)printReferenceInOutput:(id<CCOutput>)output
{
    if ([self.fileName isEqualToString:[self.successor printReferenceInOutput:output]]) {
        [output printInfo:[NSString stringWithFormat:@", %@", self.line]];
    } else {
        [output printInfo:[NSString stringWithFormat:@"\n\t\t\t%@\t\t\t%@", self.fileName, self.line]];
    }
    return self.fileName;
}

@end
