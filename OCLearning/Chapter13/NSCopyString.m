//
// Created by 吴一敏 on 15/4/16.
// Copyright (c) 2015 OCLearning. All rights reserved.
//

#import "NSCopyString.h"


@implementation NSCopyString {

}
//C 函数
void copyStringReturnPointer(char *to, char *from) {
    for (; *from != '\0'; from++, to++) {
        *to = *from;
    }
    *to = '\0';
}

+ (void)test {
    char stringFrom[] = "A string to be copied.";
    char stringTo[50];
    copyStringReturnPointer(stringTo, stringFrom);
    NSLog(@"%s", &stringTo);
    // =
    NSLog(@"%s", stringTo);

    copyStringReturnPointer(stringTo, "So is This");
    NSLog(@"%s", &stringTo);
    // =
    NSLog(@"%s", stringTo);
}
@end