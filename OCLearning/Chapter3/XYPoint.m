//
//  XYPoint.m
//  OCLearning
//
//  Created by 吴一敏 on 15/4/12.
//  Copyright (c) 2015年 OCLearning. All rights reserved.
//

#import "XYPoint.h"

@implementation XYPoint {
    int x;
    int y;
}

- (int)x
{
    return x;
}

- (void)setX:(int)xValue
{
    x = xValue;
}

- (int)y
{
    return y;
}

- (void)setY:(int)yValue
{
    y = yValue;
}

- (void)setX:(int)xValue andY:(int)yValue
{
    x = xValue;
    y = yValue;
}

- (void)printPoint
{
    NSLog(@"(x,y)=(%i,%i)", x, y);
}

@end