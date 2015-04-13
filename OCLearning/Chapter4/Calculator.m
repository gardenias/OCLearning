//
//  Calculator.m
//  OCLearning
//
//  Created by 吴一敏 on 15/4/12.
//  Copyright (c) 2015年 OCLearning. All rights reserved.
//

#import "Calculator.h"

@implementation Calculator {
    double accumulator;
}

- (void)setAccumulator:(double)value
{
    accumulator = value;
}

- (void)clear
{
    accumulator = 0;
}

- (double)accumulator
{
    return accumulator;
}

- (double)add:(double)value
{
    return accumulator += value;
}

- (double)substract:(double)value
{
    return accumulator -= value;
}

- (double)multiply:(double)value
{
    return accumulator *= value;
}

- (double)divide:(double)value
{
    return accumulator /= value;
}

- (double)changeSign
{
    return accumulator = -accumulator;
}

- (double)reciprocal
{
    return accumulator *= 2;
}

- (double)xSquared
{
    return accumulator = accumulator * accumulator;
}

+ (void) test{
    Calculator * calculator = [[Calculator alloc] initWithChapterName:@"Chapter 4"];
    [calculator summary];
    [calculator setAccumulator:19];
    NSLog(@"calculator = %g",calculator.accumulator);
    NSLog(@"calculator = %g",[calculator add:10]);
    NSLog(@"calculator = %g",[calculator substract:9]);
    NSLog(@"calculator = %g",[calculator divide:2]);
    NSLog(@"calculator = %g",[calculator multiply:10]);
    NSLog(@"calculator = %g",[calculator changeSign]);
    NSLog(@"calculator = %g",[calculator reciprocal]);
    NSLog(@"calculator = %g",[calculator xSquared]);
}

@end