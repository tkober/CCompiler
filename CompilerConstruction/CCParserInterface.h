//
//  CCParserInterface.h
//  CompilerConstruction
//
//  Created by Thorsten Kober on 29.04.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//


/* Application Programming Interface for Compiler Construction Project. */

#import "CCOutput.h"

extern id<CCOutput> _output;
extern BOOL start_compiling(const char *input, id<CCOutput> output);


