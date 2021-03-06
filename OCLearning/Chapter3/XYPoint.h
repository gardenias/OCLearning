//
//  XYPoint.h
//  OCLearning
//
//  Created by 吴一敏 on 15/4/12.
//  Copyright (c) 2015年 OCLearning. All rights reserved.
//

#ifndef OCLearning_XYPoint_h
#define OCLearning_XYPoint_h

#import "Learning.h"

@interface XYPoint : Learning

- (int)x;
- (void)setX:(int)xValue;

- (int)y;
- (void)setY:(int)yValue;

- (void)setX:(int)xValue andY:(int)yValue;

- (void) printPoint;

+ (void) test;

@end
#endif