//
//  Fraction.m
//  OCLearning
//
//  Created by 吴一敏 on 15/4/12.
//  Copyright (c) 2015年 OCLearning. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"

@implementation Fraction {
    int numerator;
    int denominator;
}

- (void)print
{
    NSLog(@"franction is %i/%i", numerator, denominator);
}

- (int)numerator
{
    return numerator;
}

- (void)setNumerator:(int)n
{
    numerator = n;
}

- (int)denominator
{
    return denominator;
}

- (void)setDenominator:(int)n
{
    denominator = n;
}

+ (void)test
{
    Fraction *fanction = [[Fraction alloc] initWithChapterName:@"Chapter Three"];

    [fanction summary];
    
    [fanction setNumerator:10];
    [fanction setDenominator:10];
    [fanction print];

    // accessor:getter and setter
    fanction = [[Fraction alloc] init];
    fanction.numerator = 1;
    fanction.denominator = 10;
    [fanction print];
    
    int integerValue = 100;
    float floadValue = 2912.99;
    double doubleValue = 922.21;
    char charVar = 'W';
    NSLog(@"\nnumber print format:\n\tintegerValue = %i,\n\tfloatValue = %f,\n\tdoubleValue = %e,\n\tdoubleValue = %g,\n\tcharVar = %c",
          integerValue,floadValue,doubleValue,doubleValue,charVar);
}

@end