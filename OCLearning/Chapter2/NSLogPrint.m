//
//  NSLogPrint.m
//  OCLearning
//
//  Created by 吴一敏 on 15/4/12.
//  Copyright (c) 2015年 OCLearning. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSLogPrint.h"

@implementation NSLogPrint

- (void)print
{
    int i;

    i = 1;
    NSLog(@"Testing...");
    NSLog(@"...%i", i);
    NSLog(@"...%i", i + 1);
    NSLog(@"...%i", i + 2);

    int sum;
    sum = 25 + 37 - 19;
    NSLog(@"...%i", sum);
}

+ (void)test{
    NSLogPrint * nsLogPrint = [[NSLogPrint alloc] initWithChapterName:@"Chapter 2"];
    [nsLogPrint summary];
    [nsLogPrint print];
}

@end