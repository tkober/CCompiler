//
//  CCUIController.m
//  CompilerConstruction
//
//  Created by Thorsten Kober on 06.04.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCUIController.h"
#import "CCScanner.h"
#import "CCParser.h"
#import "CCSymbolTable.h"


@interface CCUIController ()
@property (strong, nonatomic) IBOutlet NSTextView *inputTextView;
@property (strong, nonatomic) IBOutlet NSTextView *outputTextView;


#pragma mark | IB Actions
- (IBAction)startCompilerButtonPressed:(id)sender;
- (IBAction)printSymbolTableButtonPressed:(id)sender;


#pragma mark | Logging
- (void)clearLog;
- (void)logAttributedString:(NSAttributedString *)attributedString;


@end

#pragma mark -
#pragma mark -
@implementation CCUIController


#pragma mark - Private Methods
#pragma mark | IB Actions
- (IBAction)startCompilerButtonPressed:(id)sender
{
    [self clearLog];
    char input [self.inputTextView.textStorage.string.length];
    sprintf(input, "%s%s", self.inputTextView.textStorage.string.UTF8String, "\n");
    [[CCSymbolTable sharedInstance] purge];
    start_compiling(input, self);
}


- (IBAction)printSymbolTableButtonPressed:(id)sender
{
    [[CCSymbolTable sharedInstance] printSymbolTable:self];
}


#pragma mark | Logging
- (void)clearLog
{
    [self.outputTextView setString:@""];
}


- (void)logAttributedString:(NSAttributedString *)attributedString
{
    dispatch_async(dispatch_get_main_queue(), ^{
        [[self.outputTextView textStorage] appendAttributedString:attributedString];
        [[self.outputTextView textStorage] setFont:[NSFont fontWithName:@"Menlo"
                                                                   size:11]];
        [self.outputTextView scrollRangeToVisible:NSMakeRange([[self.outputTextView string] length], 0)];
    });
}



#pragma mark - CCOutput
#pragma mark | API for C-Strings
- (void)cprintText:(const char *)text
           onLevel:(CCOutputLevel)level
{
    [self printText:[NSString stringWithUTF8String:text]
            onLevel:level];
}


- (void)cprintInfo:(const char *)text
{
    [self printInfo:[NSString stringWithUTF8String:text]];
}


- (void)cprintWarning:(const char *)text
{
    [self printWarning:[NSString stringWithUTF8String:text]];
}


- (void)cprintError:(const char *)text
{
    [self printError:[NSString stringWithUTF8String:text]];
}


- (void)cprintResult:(const char *)text
{
    [self printResult:[NSString stringWithUTF8String:text]];
}


#pragma mark | API for ObjC-Strings
- (void)printText:(NSString *)text
          onLevel:(CCOutputLevel)level
{
    switch (level) {
        case CCOutputLevelInfo:
            [self printInfo:text];
            break;
            
        case CCOutputLevelWarning:
            [self printWarning:text];
            break;
            
        case CCOutputLevelError:
            [self printError:text];
            break;
            
        case CCOutputLevelResult:
            [self printResult:text];
            break;
    }
}


- (void)printInfo:(NSString *)text
{
    [self logAttributedString:[[NSAttributedString alloc] initWithString:text
                                                              attributes:@{NSForegroundColorAttributeName: [NSColor darkGrayColor]}]];
}


- (void)printWarning:(NSString *)text
{
    [self logAttributedString:[[NSAttributedString alloc] initWithString:text
                                                              attributes:@{NSForegroundColorAttributeName: [NSColor yellowColor]}]];
}


- (void)printError:(NSString *)text
{
    [self logAttributedString:[[NSAttributedString alloc] initWithString:text
                                                              attributes:@{NSForegroundColorAttributeName: [NSColor redColor]}]];
}


- (void)printResult:(NSString *)text
{
    [self logAttributedString:[[NSAttributedString alloc] initWithString:text
                                                              attributes:@{NSForegroundColorAttributeName: [NSColor blueColor]}]];
}

@end

