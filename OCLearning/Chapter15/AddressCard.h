//
// Created by 吴一敏 on 15/4/17.
// Copyright (c) 2015 OCLearning. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Learning.h"


@interface AddressCard : Learning

@property(copy, nonatomic) NSString *name;
@property(copy, nonatomic) NSString *email;

- (AddressCard *)setName:(NSString *)theName andEmail:(NSString *)theEmail;

- (void)print;

+ (void)test;

@end