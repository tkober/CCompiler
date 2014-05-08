//
//  CCSymbolTable.h
//  CompilerConstruction
//
//  Created by Thorsten Kober on 05.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "CCOutput.h"


#pragma mark - CCSymbolTable
/*!
 * @class CCSymbolTable
 *
 * @discussion
 *      CCSymbolTable implements a Singleton, that...
 */
@interface CCSymbolTable : NSObject
@property (weak, nonatomic) id<CCOutput> output;

#pragma mark | Creators
/*!
 * @method sharedInstance
 *
 * @discussion
 *      Provides access to the shared instance of the Singleton.
 *
 * @return Returns the shared instance of CCSymbolTable.
 */
+ (CCSymbolTable *)sharedInstance;


#pragma mark | Adding References
- (void)addReferenceSymbol:(char *)name
                      file:(char *)filename
                      line:(unsigned int)line;


#pragma mark | Purging Table
- (void)purge;


#pragma mark | Printing
- (void)printSymbolTable:(id<CCOutput>)output;

@end
