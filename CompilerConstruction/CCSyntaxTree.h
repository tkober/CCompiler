//
//  CCSyntaxTree.h
//  CompilerConstruction
//
//  Created by Thorsten Kober on 09.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import <Foundation/Foundation.h>


@class CCTranslationUnitNode;
@protocol CCOutput;


#pragma mark - CCSyntaxTree
/*!
 * @class CCSyntaxTree
 *
 * @discussion
 *      CCSyntaxTree implements a Singleton, that...
 */
@interface CCSyntaxTree : NSObject
@property (strong, nonatomic, readonly) NSArray *translationUnits;

#pragma mark | Creators
/*!
 * @method sharedInstance
 *
 * @discussion
 *      Provides access to the shared instance of the Singleton.
 *
 * @return Returns the shared instance of CCSyntaxTree.
 */
+ (CCSyntaxTree *)sharedInstance;


#pragma mark | Adding Translation Unit
- (void)addTranslationUnit:(CCTranslationUnitNode *)translationUnit;


#pragma mark | Purging Tree
- (void)purge;


#pragma mark | Printing
- (void)printToOutput:(id<CCOutput>)output;

@end