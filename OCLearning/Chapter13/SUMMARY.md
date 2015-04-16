### Chapter 13
##### 基本的C语言特性

**斐波那契数列**

**Fibonacci.h***

- 采用递归计算的方法：Fibonacci(n) = Fibonacci(n-2) + Fibonacci(n-1);超过Fibonacci(30)就很难计算出来；
- 过多的内存分配：每个<n的斐波那契数计算了两次；Fibonacci(n-1) = Fibonacci(n-2)+Fibonacci(n-3),Fibonacci(n-2) = Fibonacci(n-3) + Fibonacci(n-4);
- 导致过深的递归调用栈

**FibonacciV2.h 版本**

- 采用C的long[3],就可以完成计算内存一次分配，不再由内存分配释放操作；
- 无递归调用栈
- 缺点：从0-n-1都得计算出来，才能求得Fibonacci(n)的结果；