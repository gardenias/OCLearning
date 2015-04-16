//
//  main.m
//  OCLearning
//
//  Created by 吴一敏 on 14/11/18.
//  Copyright (c) 2014年 OCLearning. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Chapter2/NSLogPrint.h"
#import "Fraction.h"
#import "Chapter3/XYPoint.h"
#import "Chapter4/Calculator.h"
#import "Chapter5/Factorial.h"
#import "Chapter5/NumbersSum.h"
#import "Chapter7/FractionChapter7.h"
#import "EnumAPILearning.h"
#import "FractionChapter7+MathOps.h"
#import "Fibonacci.h"
#import "FibonacciV2.h"
#import "NSCopyString.h"

int main(int argc, const char *argv[]) {
    @autoreleasepool {
        // chaptor 2
        [NSLogPrint test];

        // chapter 3
        [Fraction test];

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

        //chapter 11
        [FractionChapter7 categoryTest];

        //chatper 13
/*
        int times = 1000;
        NSDate *begin = [[NSDate alloc] init];
        while (times-- > 0) {
            [Fibonacci test:0];
            [Fibonacci test:1];
            [Fibonacci test:2];
            [Fibonacci test:3];
            [Fibonacci test:10];
        }
        NSDate *date = [[NSDate alloc] init];
        times = 1000;
        while (times-- > 0) {
            [FibonacciV2 test:0];
            [FibonacciV2 test:1];
            [FibonacciV2 test:2];
            [FibonacciV2 test:3];
            [FibonacciV2 test:10];
        }
        NSLog(@"interval.v1 = %d", [date timeIntervalSinceDate:begin]);//interval.v1 = -1804358685
        NSLog(@"interval.v2 = %d", [date timeIntervalSinceNow]);//interval.v2 = -2097072
*/
        int fibonacci = 10;
        [Fibonacci test:fibonacci];
        [FibonacciV2 test:fibonacci];

        [NSCopyString test];
    };
    return 0;
}