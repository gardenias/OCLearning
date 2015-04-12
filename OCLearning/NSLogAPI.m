//
//  NSLogAPI.m
//  OCLearning
//
//  Created by 吴一敏 on 15/4/12.
//  Copyright (c) 2015年 OCLearning. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSLogPrint.m"
#import "Fraction.m"

int main(int argc, const char *argv[])
{
    @autoreleasepool {
        NSLogPrint *nslogPrintTest = [[NSLogPrint alloc] init];
        [nslogPrintTest print];
        
        
        Fraction *fraction = [[Fraction alloc] init];
        
        [fraction setNumerator:10];
        [fraction setDenominator:10];
        [fraction print];
    };
    return 0;
}