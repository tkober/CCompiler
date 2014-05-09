//
//  CCJumpStatementNode.h
//  CompilerConstruction
//
//  Created by Thorsten Kober on 08.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#import "CCSyntaxNode.h"


@class CCExpressionNode;
@class CCIdentifierNode;


typedef NS_ENUM(NSUInteger, CCJumpStatmentType) {
    CCJumpStatementGOTO = 1,
    CCJumpStatementContinue,
    CCJumpStatementBreak,
    CCJumpStatementReturn
};


#pragma mark - CCJumpStatementNode
@interface CCJumpStatementNode : CCSyntaxNode
@property (strong, nonatomic) CCIdentifierNode *identifier;
@property (strong, nonatomic) CCExpressionNode *expression;
@property (assign, nonatomic) CCJumpStatmentType jumpStatementType;


@end
