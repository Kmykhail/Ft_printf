# Ft_printf
Ft_printf is a project that aims to mimic standard C function 'printf'.

I tried to clone the original printf function (on Mac OS) to the maximum, but not everything is so smooth, the code is dirty
# Compiling
```
$> make
$> gcc libftprintf.a main.c && ./a.out
```
# Examples
```
#include "ft_printf/ft_printf.h"
int main()
{
  ft_printf("Hello world\n");
  ft_printf("%d", 457);
  return (0);
}
```
