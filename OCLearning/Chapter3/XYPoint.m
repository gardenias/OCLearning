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

+ (void)test
{
    XYPoint *point = [[XYPoint alloc] initWithChapterName:@"Chapter Three"];

    [point summary];
    
    point.x = 19;
    point.y = 10;
    [point printPoint];

    [point setX:30 andY:93];
    [point printPoint];

    [point setValue:[[NSNumber alloc] initWithInt:10] forKey:@"x"];
    [point setValue:[[NSNumber alloc] initWithInt:20] forKey:@"y"];
    [point printPoint];
}

@end