//
// Created by 吴一敏 on 15/4/16.
// Copyright (c) 2015 OCLearning. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Learning.h"

@interface FibonacciV2 : Learning

@property int fibonacci;

+ (FibonacciV2 *)on:(int)fib;

+ (void)test:(int)fibonacci;

@end