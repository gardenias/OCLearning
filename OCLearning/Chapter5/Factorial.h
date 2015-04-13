//
//  Factorial.h
//  OCLearning
//
//  Created by 吴一敏 on 15/4/13.
//  Copyright (c) 2015年 OCLearning. All rights reserved.
//

#ifndef OCLearning_Factorial_h
#define OCLearning_Factorial_h
#import <Foundation/Foundation.h>

@interface Factorial : NSObject

+ (Factorial *)on:(int)value;

- (void)factorial;

+ (void)test;

@end
#endif