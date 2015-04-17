//
// Created by 吴一敏 on 15/4/17.
// Copyright (c) 2015 OCLearning. All rights reserved.
//

#import "AddressCard.h"


@implementation AddressCard {
}

@synthesize name;
@synthesize email;

- (AddressCard *)setName:(NSString *)theName andEmail:(NSString*) theEmail{
    name = theName;
    email = theEmail;
    return self;
}


- (void)print {
    NSLog(@"====================================");
    NSLog(@"|                                             ");
    NSLog(@"| %-3ls |", [name UTF8String]);
    NSLog(@"| %-3ls |", [email UTF8String]);
    NSLog(@"|                                             ");
    NSLog(@"|                                             ");
    NSLog(@"|            O           O                  ");
    NSLog(@"|                                             ");
    NSLog(@"====================================");
}


+ (void)test {
    NSString * theName = @"Julia Kochan";
    NSString * theEmail = @"jewls337@axlc.com";
    AddressCard *card = [[[AddressCard alloc] initWithChapterName:@"Chapter 15"] setName:theName andEmail:theEmail];
    [card print];
}
@end