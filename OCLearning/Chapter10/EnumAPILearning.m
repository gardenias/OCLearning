//
// Created by 吴一敏 on 15/4/15.
// Copyright (c) 2015 OCLearning. All rights reserved.
//

#import "EnumAPILearning.h"


@implementation EnumAPILearning {

}

+ (void)test {
    enum moth {
        january = 1, february, march, april, may, june, july, august, september, october, november, december
    };
    enum moth amonth;
    int days;

    NSLog(@"@Enter Month number:");
    scanf("%i", &amonth);
    switch (amonth) {
        case january:
        case march:
        case may:
        case july:
        case august:
        case october:
        case december:
            days = 31;
            break;

        case february:
        case april:
        case june:
        case september:
        case november:
            days = 30;
            break;

        default:
            NSLog(@"bad moth number");
    }

    if (days != 0) {
        NSLog(@"Number of day is %i",days);
    }

    if (amonth == february) {
        NSLog(@"@... or 29 if it's a leap year");
    }
}
@end