//
//  Factorial.m
//  OCLearning
//
//  Created by 吴一敏 on 15/4/13.
//  Copyright (c) 2015年 OCLearning. All rights reserved.
//

#import "Factorial.h"

@implementation Factorial {
    int base;
}

- (Factorial *)setBase:(int)value
{
    base = value;
    return self;
}

- (int)base
{
    return base;
}

+ (Factorial *)on:(int)value
{
    if (0 > value) {
        return nil;
    }

    return [[[Factorial alloc] init] setBase:value];
}

- (void)factorial
{
    long            result = 1;
    int             index = base;
    NSMutableString *output = [[NSMutableString alloc] initWithFormat:@"%i!=", base];

    for (; index > 1; index--) {
        result *= index;
        [output appendFormat:@"%i×", index];
    }

    [output appendFormat:@"%i=%li", 1, result];

    NSLog(@"%@", [output description]);
}

+ (void)test
{
    NSLog(@"=========================================");
    NSLog(@"=========== Chapter Five ================");
    NSLog(@"=========== Factorial ===================");
    NSLog(@"=========================================");
    [[Factorial on:5] factorial];
    [[Factorial on:10] factorial];
    [[Factorial on:15] factorial];
}

@end