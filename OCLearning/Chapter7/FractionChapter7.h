//
//  Franction.h
//  OCLearning
//
//  Created by 吴一敏 on 15/4/14.
//  Copyright (c) 2015年 OCLearning. All rights reserved.
//

#ifndef OCLearning_FranctionChapter7_h
#define OCLearning_FranctionChapter7_h

#import "../Chapter3/Franction.h"

@interface FractionChapter7 : Franction

@property int numerator, denominator;

- (void)setTo:(int)n over:(int)d;

- (double)convertToNum;

- (FractionChapter7 *)add:(FractionChapter7 *)f;

- (FractionChapter7 *)reduce;

@end
#endif