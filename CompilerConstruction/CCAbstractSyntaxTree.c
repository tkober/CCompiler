//
//  CCAbstractSyntaxTree.c
//  CompilerConstruction
//
//  Created by Thorsten Kober on 06.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>

#include "CCAbstractSyntaxTree.h"


extern void yyerror(const char *);


#pragma mark | Creating Node
CCAbstractSyntaxTree * newAST(int nodetype, CCAbstractSyntaxTree *leftChild, CCAbstractSyntaxTree *rightChild)
{
    CCAbstractSyntaxTree *result = malloc(sizeof(CCAbstractSyntaxTree));
    if (!result) {
        yyerror("malloc error");
        exit(0);
    }
    result->nodetype = nodetype;
    result->leftChild = leftChild;
    result->rightChild = rightChild;
    return result;
}


CCAbstractSyntaxTree * newNumberNode(double number)
{
    CCNumberNode *result = malloc(sizeof(CCNumberNode));
    if (!result) {
        yyerror("malloc error");
        exit(0);
    }
    result->nodetype = 'K';
    result->number = number;
    return (CCAbstractSyntaxTree *)result;
}


#pragma mark | Evaluation
double evaluateAST(CCAbstractSyntaxTree *ast)
{
    double result;
    switch (ast->nodetype) {
        case 'K':
            result = ((CCNumberNode *)ast)->number;
            break;
            
        case '+':
            result = evaluateAST(ast->leftChild) + evaluateAST(ast->rightChild);
            break;
            
        case '-':
            result = evaluateAST(ast->leftChild) - evaluateAST(ast->rightChild);
            break;
            
        case '*':
            result = evaluateAST(ast->leftChild) * evaluateAST(ast->rightChild);
            break;
            
        case '/':
            result = evaluateAST(ast->leftChild) / evaluateAST(ast->rightChild);
            break;
            
        case '|':
            result = evaluateAST(ast->leftChild);
            if (result < 0) result = -result;
            break;
            
        default:
            printf("internal error: bad node %c\n", ast->nodetype);
            break;
    }
    
    return result;
}


#pragma mark | Free
void freeAST(CCAbstractSyntaxTree *ast)
{
    switch (ast->nodetype) {
        // two subtrees
        case '+':
        case '-':
        case '*':
        case '/':
            free(ast->rightChild);
        
        // One subtree
        case '|':
            free(ast->leftChild);
            
        // No subtree
        case 'K':
            free(ast);
            break;
            
        default:
            printf("internal error: bad node %c\n", ast->nodetype);
            break;
    }
}




