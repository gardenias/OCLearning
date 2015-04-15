### Chapter 10
##### 分类和协议

**Category**

`@interface ClassName (CategoryName)`

未命名分类：`@interface ClassName ()`

- 能够定义额外的实例变量和属性
- 所有的属性，实例变量和方法都是私有的，仅在该class中可访问
- 扩展的方法需要在类的实现区域中实现，而不是分类的实现区域；