//
// Created by 吴一敏 on 15/4/17.
// Copyright (c) 2015 OCLearning. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Learning.h"

@class AddressCard;

@interface AddressBook : Learning

@property(copy, nonatomic) NSString *name;
@property(strong, nonatomic) NSMutableArray *book;

- (instancetype)initWithName:(NSString *)name;

- (instancetype)initWithName:(NSString *)name andChapterName:(NSString *)chapterName;

- (void)addCard:(AddressCard *)card;

- (int)entries;

- (void)list;

- (void)listV2;

- (NSArray *)lookup:(NSString *)theName;

- (void)removeCard:(NSString *)theName;

- (void)sort;

+ (void)test;

@end