//
//  CCAbstractSyntaxTree.h
//  CompilerConstruction
//
//  Created by Thorsten Kober on 06.05.14.
//  Copyright (c) 2014 Thorsten Kober. All rights reserved.
//

#ifndef CompilerConstruction_CCAbstractSyntaxTree_h
#define CompilerConstruction_CCAbstractSyntaxTree_h


struct CCAbstractSyntaxTree {
    int nodetype;
    struct CCAbstractSyntaxTree *leftChild;
    struct CCAbstractSyntaxTree *rightChild;
};
typedef struct CCAbstractSyntaxTree CCAbstractSyntaxTree;


struct CCNumberNode {
    int nodetype;
    double number;
};
typedef struct CCNumberNode CCNumberNode;


#pragma mark | Creating Node
CCAbstractSyntaxTree * newAST(int nodetype, CCAbstractSyntaxTree *leftChild, CCAbstractSyntaxTree *rightChild);
CCAbstractSyntaxTree * newNumberNode(double number);


#pragma mark | Evaluation
double evaluateAST(CCAbstractSyntaxTree *ast);


#pragma mark | Free
void freeAST(CCAbstractSyntaxTree *ast);


#endif
