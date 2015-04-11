//
//  main.m
//  OCLearning
//
//  Created by 吴一敏 on 14/11/18.
//  Copyright (c) 2014年 OCLearning. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char *argv[])
{
    @autoreleasepool {
        int i;
        i = 1;
        NSLog(@"Testing...");
        NSLog(@"...%i", i);
        NSLog(@"...%i", i + 1);
        NSLog(@"...%i", i + 2);

        int sum;
        sum = 25 + 37 - 19;
        NSLog(@"...%i", sum);
        
        
    };
    return 0;
}