//
//  NSLogPrint.m
//  OCLearning
//
//  Created by 吴一敏 on 15/4/12.
//  Copyright (c) 2015年 OCLearning. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSLogPrint : NSObject
- (void)print;
@end

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

@end