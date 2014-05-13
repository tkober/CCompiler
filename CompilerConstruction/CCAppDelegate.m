//
//  CCAppDelegate.m
//  CompilerConstruction
//
//  Created by Thorsten Kober on 06.04.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCAppDelegate.h"


@interface CCAppDelegate ()
@property (strong, nonatomic) IBOutlet NSTextView *inputTextView;

@end

@implementation CCAppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
    [self.inputTextView setAutomaticSpellingCorrectionEnabled:NO];
    [self.inputTextView setAutomaticTextReplacementEnabled:NO];
    [self.inputTextView setAutomaticQuoteSubstitutionEnabled:NO];
}

/*
 
 #import "CCOutput.h"
 
 
 void start_parser(const char *input, id<CCOutput> output);
 
 */

@end
