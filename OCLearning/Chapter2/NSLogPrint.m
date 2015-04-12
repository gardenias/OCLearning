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

+ (void)print
{
    NSLog(@"=========================================");
    NSLog(@"=========== Chapter Tow ================");
    NSLog(@"=========== NSLogPrint ==================");
    NSLog(@"=========================================");
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