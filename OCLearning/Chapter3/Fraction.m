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
    NSLog(@"%i/%i", numerator, denominator);
}

- (void)setNumerator:(int)n
{
    numerator = n;
}

- (void)setDenominator:(int)n
{
    denominator = n;
}

@end