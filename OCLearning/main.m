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

int main(int argc, const char *argv[])
{
    @autoreleasepool {
        //chaptor 2
        NSLogPrint *nslogPrintTest = [[NSLogPrint alloc] init];
        [nslogPrintTest print];
        
        
        //chapter 3
        Fraction *fraction = [[Fraction alloc] init];
        [fraction setNumerator:10];
        [fraction setDenominator:10];
        [fraction print];
        
        
        NSLog(@"running...");
    };
    return 0;
}