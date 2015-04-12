//
//  Calculator.h
//  OCLearning
//
//  Created by 吴一敏 on 15/4/12.
//  Copyright (c) 2015年 OCLearning. All rights reserved.
//

#ifndef OCLearning_Calculator_h
#define OCLearning_Calculator_h

#import <Foundation/Foundation.h>

@interface Calculator : NSObject

- (void)setAccumulator:(double)value;

- (void)clear;

- (double)accumulator;

- (double)add:(double)value;

- (double)substract:(double)value;

- (double)multiply:(double)value;

- (double)divide:(double)value;

- (double) changeSign;//改变累加器正负号

- (double) reciprocal;//累加器

- (double) xSquared;//累加器平方

+ (void) test;

@end
#endif