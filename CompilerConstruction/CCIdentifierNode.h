//
//  CCIdentifierNode.h
//  CompilerConstruction
//
//  Created by Thorsten Kober on 09.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCSyntaxNode.h"


#pragma mark - CCIdentifierNode
@interface CCIdentifierNode : CCSyntaxNode
@property (strong, nonatomic) NSString *value;

@end
