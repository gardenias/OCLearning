//
// Created by 吴一敏 on 15/4/16.
// Copyright (c) 2015 OCLearning. All rights reserved.
//

#import "FibonacciV2.h"

@implementation FibonacciV2 {
}

@synthesize fibonacci;

- (long)result {
    long resultTmp[] = {0, 0, 1};
    if (fibonacci < 2) return fibonacci;
    int start = 2;
    while (start <= fibonacci) {
        resultTmp[0] = resultTmp[1];
        resultTmp[1] = resultTmp[2];
        resultTmp[2] = resultTmp[0] + resultTmp[1];
        start++;
    }
    return resultTmp[2];
}

+ (FibonacciV2 *)on:(int)fib {
    if (fib < 0) {
        @throw [[NSException alloc] initWithName:@"" reason:@"" userInfo:nil];
    }
    FibonacciV2 *f = [[FibonacciV2 alloc] initWithChapterName:@"Chapter 13"];
    f.fibonacci = fib;
    return f;
}

+ (void)test:(int)fibonacci {
    NSLog(@"fibonacci.v2(%i) = %li", fibonacci, [[FibonacciV2 on:fibonacci] result]);
}
@end