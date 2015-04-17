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

**NSValue**

Typedef  | desc                          |     包装方法                | 展开方法
-----------| ---------------------   |  ---------------------- | --------
CGPoint   | x 和 y 组成的点         | valueWihtPoint:       | pointValue
CGSize    | 宽高组成的尺寸        |  valueWithSize:        | sizeValue
CGRect    | 矩形包含原点和尺寸|  valueWithRect:       | rectValue
NSRang   |描述位置和大小范围 |  valueWithRange:     | rangeValue

**NSDictionary , NSMutableDictionary**
