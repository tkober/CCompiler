//
//  CCTranslationUnitNode.m
//  CompilerConstruction
//
//  Created by Thorsten Kober on 08.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCTranslationUnitNode.h"


@implementation CCTranslationUnitNode


#pragma mark - Public Methods
#pragma mark | Creators
+ (CCTranslationUnitNode *)translationUnitWith:(CCExternalDeclarationNode *)externalDeclaration
                               translationUnit:(CCTranslationUnitNode *)translationUnit
{
    CCTranslationUnitNode *resut = [[self alloc] init];
    [resut setExternalDeclaration:externalDeclaration];
    [resut setTranslationUnit:translationUnit];
    return resut;
}

@end
