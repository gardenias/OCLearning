//
//  Learning.m
//  OCLearning
//
//  Created by 吴一敏 on 15/4/14.
//  Copyright (c) 2015年 OCLearning. All rights reserved.
//

#import "Learning.h"

@implementation Learning {
    NSString *chapterName;
}

- (Learning *)summary
{
    NSLog(@"\n");
    NSLog(@"===================");
    NSLog(@"%@", chapterName);
    NSLog(@"%@", [[self class] description]);
    return self;
}

- (instancetype)initWithChapterName:(NSString *)chapter
{
    chapterName = chapter;
    return [super init];
}

@end