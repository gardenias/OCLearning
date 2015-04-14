//
//  NumbersSum.m
//  OCLearning
//
//  Created by 吴一敏 on 15/4/14.
//  Copyright (c) 2015年 OCLearning. All rights reserved.
//

#import "NumbersSum.h"

@implementation NumbersSum

@synthesize number;

- (void)sum
{
    const int       step = 10;
    int             sum = 0;
    int             remainder = 0;
    int             quotient = number;
    
    NSMutableString *resultOutput = [[NSMutableString alloc] initWithFormat:@"[%i]=0", number];

    while (quotient > 0) {
        remainder = quotient % step;
        sum += remainder;
        [resultOutput appendFormat:@"+%i", remainder];

        quotient = quotient / step;
    }

    [resultOutput appendFormat:@"=%i", sum];
    NSLog(@"%@", [resultOutput description]);
}

+ (NumbersSum *)on:(int)num
{
    NumbersSum *numberSum = [[NumbersSum alloc] initWithChapterName:@"Chapter 5"];

    numberSum.number = num;
    return numberSum;
}

+ (void)test
{
    int number;

    NSLog(@"input a number , or zero to exist.");
    scanf("%i", &number);

    while (0 != number) {
        [[NumbersSum on:number] sum];
        NSLog(@"input a number , or zero to exist.");
        scanf("%i", &number);
    }

    NSLog(@"you inputed zero to exist program.");
}

@end