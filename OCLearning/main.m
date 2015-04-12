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

int main(int argc, const char *argv[])
{
    @autoreleasepool {
        // chaptor 2
        [NSLogPrint print];

        // chapter 3
        [Franction test];

        // xy point
        [XYPoint test];
        
        //chaptre 4
        [Calculator test];
    };
    return 0;
}