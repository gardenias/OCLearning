//
// Created by 吴一敏 on 15/4/16.
// Copyright (c) 2015 OCLearning. All rights reserved.
//

#import "Fibonacci.h"


@implementation Fibonacci {

}
@synthesize fibonacci;

- (long)result {
    if (fibonacci == 0) return 0;
    if (fibonacci == 1) return 1;
    else return [[Fibonacci on:fibonacci - 2] result] + [[Fibonacci on:fibonacci - 1] result];
}

+ (Fibonacci *)on:(int)fib {
    Fibonacci *f = [[Fibonacci alloc] initWithChapterName:@"Chapter 13"];
    f.fibonacci = fib;
    return f;
}

+ (void)test:(int)fibonacci {
    NSLog(@"fibonacci(%i) = %li", fibonacci, [[Fibonacci on:fibonacci] result]);
}
@end