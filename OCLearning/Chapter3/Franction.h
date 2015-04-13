//
//  Franction.h
//  OCLearning
//
//  Created by 吴一敏 on 15/4/12.
//  Copyright (c) 2015年 OCLearning. All rights reserved.
//

#ifndef OCLearning_Franction_h
#define OCLearning_Franction_h

#import "Learning.h"

@interface Franction : Learning

- (void)print;

- (int)numerator;
- (void)setNumerator:(int)numerator;
- (int)denominator;
- (void)setDenominator:(int)denominator;
+ (void)test;
@end

#endif
