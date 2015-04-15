//
// Created by 吴一敏 on 15/4/16.
// Copyright (c) 2015 OCLearning. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FractionChapter7.h"
@interface FractionChapter7()
//未命名分类的扩展方法
- (FractionChapter7 *)reduce;

@end

@interface FractionChapter7 (MathOps)

- (FractionChapter7 *) add:(FractionChapter7 *)f;

- (FractionChapter7 *)mul:(FractionChapter7 *)f;

- (FractionChapter7 *)sub:(FractionChapter7 *)f;

- (FractionChapter7 *)div:(FractionChapter7 *)f;

+ (void) categoryTest;
@end