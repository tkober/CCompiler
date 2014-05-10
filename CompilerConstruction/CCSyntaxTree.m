//
//  CCSyntaxTree.m
//  CompilerConstruction
//
//  Created by Thorsten Kober on 09.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCSyntaxTree.h"
#import "CCTranslationUnitNode.h"


@interface CCSyntaxTree ()
@property (strong, nonatomic, readonly) NSMutableArray *translationUnitsInternal;

/*!
 * Hidden initializer to ensure a single instance.
 *
 * @warning This method should only be called once and synchronized from the
 * sharedInstance accessor.
 *
 * @return An instance of CCSyntaxTree.
 */
- (id)initHidden;

@end

#pragma mark -
#pragma mark -
@implementation CCSyntaxTree
@synthesize translationUnitsInternal = _translationUnitsInternal;

static CCSyntaxTree *_sharedInstance = nil;


#pragma mark - Customized Getters
- (NSArray *)translationUnits
{
    return self.translationUnitsInternal;
}


- (NSMutableArray *)translationUnitsInternal
{
    if (!_translationUnitsInternal) {
        _translationUnitsInternal = [NSMutableArray array];
    }
    return _translationUnitsInternal;
}



#pragma mark - Private methods
#pragma mark | Initializer
- (id)initHidden
{
    return [super init];
}



#pragma mark - Public methods
#pragma mark | Creators
+ (CCSyntaxTree *)sharedInstance
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedInstance = [[self alloc] initHidden];
    });
    return _sharedInstance;
}


#pragma mark | Initializer
#pragma mark @Overridden
- (id)init
{
    return nil;
}


#pragma mark | Adding Translation Unit
- (void)addTranslationUnit:(CCTranslationUnitNode *)translationUnit
{
    [self.translationUnitsInternal addObject:translationUnit];
}


#pragma mark | Purging Tree
- (void)purge
{
    [self.translationUnitsInternal removeAllObjects];
}


#pragma mark | Printing
- (void)printToOutput:(id<CCOutput>)output
{
    for (CCTranslationUnitNode *translationUnitNode in self.translationUnitsInternal) {
        [translationUnitNode printToOutput:output
                               indentLevel:0];
        [output printResult:@"\n"];
    }
}

@end
