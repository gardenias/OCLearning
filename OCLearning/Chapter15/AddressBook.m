//
// Created by 吴一敏 on 15/4/17.
// Copyright (c) 2015 OCLearning. All rights reserved.
//

#import "AddressBook.h"
#import "AddressCard.h"


@implementation AddressBook {

}
@synthesize name, book;

- (instancetype)init {
    return [self initWithName:@"NoneName"];
}

- (instancetype)initWithChapterName:(NSString *)chapterName {
    return [self initWithName:@"NoneName" andChapterName:chapterName];
}

- (instancetype)initWithName:(NSString *)name {
    return [self initWithName:name andChapterName:@"Chapter 15"];
}

- (instancetype)initWithName:(NSString *)name andChapterName:(NSString *)chapterName {
    self = [super initWithChapterName:chapterName];
    if (self) {
        self.name = [NSString stringWithUTF8String:[name UTF8String]];

        book = [NSMutableArray arrayWithCapacity:10];
    }
    return self;
}

- (void)addCard:(AddressCard *)card {
    [book addObject:card];
}

- (int)entries {
    return [book count];
}

- (void)list {
    NSLog(@"==========Contens of Address Book %@=============", name);

    for (AddressCard *card in book) {//快速枚举
        NSLog(@"%-20s    %-32s", [card.name UTF8String], [card.email UTF8String]);
    }

    NSLog(@"===============================================", name);
}

void (^enumeratePrintBook)(AddressCard *card, NSUInteger idx, BOOL *stop) =
        ^(AddressCard *card, NSUInteger idx, BOOL *stop) {
            NSLog(@"%-20s    %-32s", [card.name UTF8String], [card.email UTF8String]);
        };

- (void)listV2 {
    NSLog(@"==========Contens of Address Book %@=============", name);

    //method one:
    [book enumerateObjectsUsingBlock:^(AddressCard *card, NSUInteger idx, BOOL *stop) {
        NSLog(@"%-20s    %-32s", [card.name UTF8String], [card.email UTF8String]);
    }];
    //method two:
//    [book enumerateObjectsUsingBlock:enumeratePrintBook];

    NSLog(@"===============================================", name);
}

void (^enumerateLookupBook)(AddressCard *card, NSUInteger idx, BOOL *stop) =
        ^(AddressCard *card, NSUInteger idx, BOOL *stop) {

        };

- (NSArray *)lookup:(NSString *)theName {
    NSMutableArray *result = [NSMutableArray array];

    [book enumerateObjectsUsingBlock:^(AddressCard *card, NSUInteger idx, BOOL *stop) {
        if ([card.name caseInsensitiveCompare:theName] == NSOrderedSame) {
            [result addObject:card];
        }
    }];
    if ([result count] == 0) return nil;
    return [result subarrayWithRange:NSMakeRange(0, [result count])];
}

- (void)removeCard:(NSString *)theName {
    [book enumerateObjectsUsingBlock:^(AddressCard *card, NSUInteger idx, BOOL *stop) {
        if ([card.name caseInsensitiveCompare:theName] == NSOrderedSame) {
            [book removeObject:card];//may be occur an error;
        }
    }];
}

- (void)sort {
    NSLog(@"[book sortUsingComparator:^(AddressCard *obj1, AddressCard *obj2) {\n"
            "        return [obj1.name compare:obj2.name];\n"
            "    }];");
    [book sortUsingComparator:^(AddressCard *obj1, AddressCard *obj2) {
        return [obj1.name compare:obj2.name];
    }];
    [self list];
    //OR
//    NSLog(@" [book sortUsingSelector:@selector(compareNames:)];");
//    [book sortUsingSelector:@selector(compareNames:)];
//    [self list];
    //OR
    NSLog(@" [book sortUsingFunction:compareCFunction context:nil];");
    [book sortUsingFunction:compareCFunction context:nil];
    [self list];
    //OR
    NSLog(@"[book sortUsingFunction:compareCFunctionBySelector context:@selector(name)];");
    [book sortUsingFunction:compareCFunctionBySelector context:@selector(name)];
    [self list];
}

NSInteger compareCFunction(AddressCard *card1, AddressCard *card2, void *context) {
    return [card1.name compare:card2.name];
}

NSInteger compareCFunctionBySelector(id card1, id card2, void *context) {
    SEL methodSelector = (SEL) context;
    id card1Name = [card1 performSelector:methodSelector];
    id card2Name = [card2 performSelector:methodSelector];
    return [card1Name compare:card2Name];
}

- (NSComparisonResult *)compareNames:(id)element {
    return [name compare:[element name]];
}

+ (void)test {
    AddressBook *book = [[AddressBook alloc] initWithName:@"Linda's Address Book"];
    [book summary];
    [book addCard:[[[AddressCard alloc] init] setName:@"Julia Kochan" andEmail:@"jewls337@axlc.com"]];
    [book addCard:[[[AddressCard alloc] init] setName:@"Tony Iannino" andEmail:@"tony.iannino@techfitness.com"]];
    [book addCard:[[[AddressCard alloc] init] setName:@"Stephen Kochan" andEmail:@"stev@clasroomM.com"]];
    [book addCard:[[[AddressCard alloc] init] setName:@"Jamine Baker" andEmail:@"jbaker@classroomM.com"]];

    NSLog(@"[book list]");
    [book list];
    NSLog(@"[book listV2]");
    [book listV2];
    NSLog(@"[book sort]");
    [book sort];

    NSString *lookupName = @"Julia Kochan";
    NSLog(@"lookup address card for name %@,result is : %@", lookupName, [book lookup:lookupName]);
    NSLog(@"remove %@ address card", lookupName);
    [book removeCard:lookupName];
    NSLog(@"remaining count %i,resutl:", [book entries]);
    [book list];
}
@end