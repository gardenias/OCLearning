//
//  NumbersSum.h
//  OCLearning
//
//  Created by 吴一敏 on 15/4/14.
//  Copyright (c) 2015年 OCLearning. All rights reserved.
//

#ifndef OCLearning_NumbersSum_h
#define OCLearning_NumbersSum_h

#import "Learning.h"

@interface NumbersSum : Learning

@property int number;

- (void)sum;

+ (NumbersSum *) on : (int) num;


+ (void) test;

@end

#endif
