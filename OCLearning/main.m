//
//  main.m
//  OCLearning
//
//  Created by 吴一敏 on 14/11/18.
//  Copyright (c) 2014年 OCLearning. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Chapter2/NSLogPrint.h"
#import "Chapter3/Franction.h"
#import "Chapter3/XYPoint.h"
#import "Chapter4/Calculator.h"
#import "Chapter5/Factorial.h"
#import "Chapter5/NumbersSum.h"
#import "Chapter7/FractionChapter7.h"
#import "EnumAPILearning.h"

int main(int argc, const char *argv[])
{
    @autoreleasepool {
        // chaptor 2
        [NSLogPrint test];

        // chapter 3
        [Franction test];

        // xy point
        [XYPoint test];
        
        //chaptre 4
        [Calculator test];
        
        //chapter 5
        [Factorial test];
        [NumbersSum test];

        //chapter 7
        [FractionChapter7 test];

        //chapter 10
        [EnumAPILearning test];
        
    };
    return 0;
}