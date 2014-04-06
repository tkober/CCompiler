//
//  CCOutput.h
//  CompilerConstruction
//
//  Created by Thorsten Kober on 06.04.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import <Foundation/Foundation.h>


typedef NS_ENUM(NSUInteger, CCOutputLevel) {
    CCOutputLevelInfor = 0,
    CCOutputLevelWarning,
    CCOutputLevelError,
    CCOutputLevelResult
};


#pragma mark - CCOutput
@protocol CCOutput <NSObject>

@required

#pragma mark | API for C-Strings
- (void)cprintText:(const char *)text
           onLevel:(CCOutputLevel)level;
- (void)cprintInfo:(const char *)text;
- (void)cprintWarning:(const char *)text;
- (void)cprintError:(const char *)text;
- (void)cprintResult:(const char *)text;


#pragma mark | API for ObjC-Strings
- (void)printText:(NSString *)text
          onLevel:(CCOutputLevel)level;
- (void)printInfo:(NSString *)text;
- (void)printWarning:(NSString *)text;
- (void)printError:(NSString *)text;
- (void)printResult:(NSString *)text;

@end
