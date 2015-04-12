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

int main(int argc, const char *argv[])
{
    @autoreleasepool {
        // chaptor 2
        NSLogPrint *nslogPrintTest = [[NSLogPrint alloc] init];
        [nslogPrintTest print];

        // chapter 3
        Fraction *fraction = [[Fraction alloc] init];
        [fraction setNumerator:10];
        [fraction setDenominator:10];
        [fraction print];

        // accessor:getter and setter
        fraction = [[Fraction alloc] init];
        fraction.numerator = 1;
        fraction.denominator = 10;
        [fraction print];

        // xy point
        XYPoint *point = [[XYPoint alloc] init];
        point.x = 19;
        point.y = 10;
        [point printPoint];

        [point setX:30 andY:93];
        [point printPoint];

        [point setValue:[[NSNumber alloc] initWithInt:10] forKey:@"x"];
        [point setValue:[[NSNumber alloc] initWithInt:20] forKey:@"y"];
        [point printPoint];
    };
    return 0;
}