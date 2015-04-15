//
//  FractionChapter7.m
//  OCLearning
//
//  Created by 吴一敏 on 15/4/14.
//  Copyright (c) 2015年 OCLearning. All rights reserved.
//

#import "FractionChapter7.h"
#import "FractionChapter7+MathOps.h"

@implementation FractionChapter7

@synthesize numerator, denominator;

- (void)print
{
    NSLog(@"%i/%i", numerator, denominator);
}

- (void)setTo:(int)n over:(int)d
{
    numerator = n;
    denominator = d;
}

- (double)convertToNum
{
    if (denominator != 0) {
        return (double)numerator / denominator;
    }

    return 0;
}

- (FractionChapter7 *)reduce
{
    int u = numerator;
    int v = denominator;
    int temp;

    while (v != 0) {
        temp = u % v;
        u = v;
        v = temp;
    }

    numerator /= u;
    denominator /= u;
    return self;
}

+ (void)test
{
    FractionChapter7   *fanctionA = [[FractionChapter7 alloc] initWithChapterName:@"Chapter 7"];
    FractionChapter7   *fanctionB = [[FractionChapter7 alloc] initWithChapterName:@"Chapter 7"];

    [fanctionA summary];

    [fanctionA setTo:1 over:4];
    [fanctionB setTo:1 over:2];

    [fanctionA print];
    NSLog(@"+");
    [fanctionB print];
    FractionChapter7 *result = [fanctionA add:fanctionB];
    NSLog(@"=");

    [result  print];
}

@end