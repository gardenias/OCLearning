### Chapter 12
##### 预处理程序

**#define**

- `#define PI 3.1415926`
- `#define  TWO_PI  2.0 * 3.1415926`
- `#define AND &&`
- `#define EQUASL ==`, `if (y EQUALS AND Y EQUALS value)`
- `#define IS_LEAP_YEAR year % 4 ==0 && year % 100 != 0 || year % 400 == 0 `, ` if (IS_LEAP_YEAR) ...`
- `#define IS_LEAP_YEAR(year) year % 4 ==0 && year % 100 != 0 || year % 400 == 0 `, ` if (IS_LEAP_YEAR(year)) ...`
- `#define SQUARE(x) x*x` : `SQARE(x+1) = x+1 * x +1 ` **_?_**
- `#define SQUARE(x) (x) * (x)`

**#import**

- `#import  <Foundation/Foundation.h>`
- `#import "Learning.h"`

**条件编译**

```
#ifdef IPAD
    #define kImageFile @"barnHD.png"
#else
    #define kImageFielle @"barn.pn"
#endif
```

