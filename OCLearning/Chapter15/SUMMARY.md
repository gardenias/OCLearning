### Chapter 15
##### 数字、字符串和集合

**NSNumber**

**NSString , NSMutableString**

- @property (copy) NSString *value;    **在setter方法内生成实例变量的副本，而不仅仅是赋值(默认为 assign)**
- @property (nonatomic) NSString *value;  **不必担心竞争条件下多线程试图同时访问实例变量的情形**

**NSArray , NSMutableArray**

- sortUsingComparator
- sortUsingSelector
- sortUsingFunction

**快速枚举**

```
for (AddressCard *card in book) {
     ...
}
```
