//
//  Fraction.m
//  OCLearning
//
//  Created by 吴一敏 on 15/4/12.
//  Copyright (c) 2015年 OCLearning. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Franction.h"

@implementation Fraction {
    int numerator;
    int denominator;
}

- (void)print
{
    NSLog(@"franction is %i/%i", numerator, denominator);
}

- (int) numerator
{
    return numerator;
}
- (void)setNumerator:(int)n
{
    numerator = n;
}

- (int) denominator
{
    return denominator;
}

- (void)setDenominator:(int)n
{
    denominator = n;
}

@end