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
@property (strong, nonatomic) CCSyntaxNode *identifier;
@property (strong, nonatomic) CCSyntaxNode *expression;
@property (assign, nonatomic) CCJumpStatmentType jumpStatementType;


#pragma mark | Creators
+ (CCJumpStatementNode *)gotoStatementWithIdentifier:(CCIdentifierNode *)identifer;
+ (CCJumpStatementNode *)continueStatement;
+ (CCJumpStatementNode *)breakStatement;
+ (CCJumpStatementNode *)returnStatementWithExpression:(CCExpressionNode *)expression;


@end
