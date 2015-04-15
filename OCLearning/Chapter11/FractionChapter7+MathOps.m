//
// Created by 吴一敏 on 15/4/16.
// Copyright (c) 2015 OCLearning. All rights reserved.
//

#import "FractionChapter7+MathOps.h"


@implementation FractionChapter7 (MathOps)

- (FractionChapter7 *)add:(FractionChapter7 *)f {
    FractionChapter7 *result = [[FractionChapter7 alloc] initWithChapterName:@"Chapter 11"];
    //a/b + c/d = ((a*d)+(c*b))/(b*d)
    result.numerator = self.numerator * f.denominator + self.denominator * f.numerator;
    result.denominator = self.denominator * f.denominator;
    [result reduce];
    return result;
}

- (FractionChapter7 *)sub:(FractionChapter7 *)f {
    FractionChapter7 *result = [[FractionChapter7 alloc] initWithChapterName:@"Chapter 11"];
    //a/b + c/d = ((a*d)-(c*b))/(b*d)
    result.numerator = self.numerator * f.denominator - self.denominator * f.numerator;
    result.denominator = self.denominator * f.denominator;
    [result reduce];
    return result;
}

- (FractionChapter7 *)mul:(FractionChapter7 *)f {
    FractionChapter7 *result = [[FractionChapter7 alloc] initWithChapterName:@"Chapter 11"];
    //a/b + c/d = (a*c)/(b*d)
    result.numerator = self.numerator * f.numerator;
    result.denominator = self.denominator * f.denominator;
    [result reduce];
    return result;
}

- (FractionChapter7 *)div:(FractionChapter7 *)f {
    FractionChapter7 *result = [[FractionChapter7 alloc] initWithChapterName:@"Chapter 11"];
    //a/b + c/d = (a*d)/(b*c)
    result.numerator = self.numerator * f.denominator;
    result.denominator = self.denominator * f.numerator;
    [result reduce];
    return result;
}

+ (void)categoryTest {
    FractionChapter7 *f1 = [[FractionChapter7 alloc] initWithChapterName:@"Chapter 10"];
    FractionChapter7 *f2 = [[FractionChapter7 alloc] initWithChapterName:@"Chapter 10"];
    FractionChapter7 *result;

    [f1 setTo:1 over:3];
    [f2 setTo:2 over:5];

    [f1 print];
    NSLog(@"+");
    [f2 print];
    NSLog(@"----------");
    result = [f1 add:f2];
    [result print];

    NSLog(@"\n");

    [f1 print];
    NSLog(@"-");
    [f2 print];
    NSLog(@"----------");
    result = [f1 sub:f2];
    [result print];

    NSLog(@"\n");

    [f1 print];
    NSLog(@"/");
    [f2 print];
    NSLog(@"----------");
    result = [f1 div:f2];
    [result print];

    NSLog(@"\n");

    [f1 print];
    NSLog(@"*");
    [f2 print];
    NSLog(@"----------");
    result = [f1 mul:f2];
    [result print];
}
@end