---
    comments: true
    tags:
        - 大二上笔记
---

> No...

# 计算机系统 Ⅱ

## RISC-V Assembly
（其实是系统一的东西）32位指令

- Opcode: 操作码，用于识别指令类型
- rs1: the first register source operand
- rs2: the second register source operand
- rd: the register destination operand
- funct3/7: （从Opcode的指令类型中）确定特定的指令
- imm: immediate value or address

![](CS2.png)

寄存器与内存：

![](CS3.png)

一些例子：

![](CS4.png)

## Pipelining

通过Overlapping的方式，将多个指令的多个阶段同时进行，以提高CPU的效率。

定义吞吐量（Throughput/TP）：单位时间内完成的指令数。  
$TP = \frac{n}{T} \lt TP_{max}$且$T = (m+n-1) \times \Delta t_0$，其中$m$为流水线级数，$n$为指令数，$\Delta t_0$为流水线时钟周期。

$TP_{max} = \lim_{n\to\infty} \frac{n}{T} = \frac{1}{\Delta t_0}$

### Solve Bottleneck
1. Subdivide the task
2. Repetition

定义加速比（Speedup/SP）：$S = \frac{Exetime_{non-pipe}}{Exetime_{pipe}} = \frac{nm\Delta t_0}{(m+n-1)\Delta t_0} = \frac{n}{n+m-1}$

效率$E = \frac{SP}{m} = TP \cdot \Delta t_0$

### 非线性流水线

[看这篇文章](https://blog.csdn.net/rizero/article/details/106740895)

## Operating System
### ELF

C程序编译为可执行文件的四个过程：

- 预处理 —— 宏展开
- 编译 —— 源代码转为汇编
- 汇编 —— 汇编转为机器码
- 链接 —— 将多个目标文件链接为一个可执行文件，链接库

最终的可执行文件包含一个 crt(C runtime)，这个 crt 内会调用 main 函数。

ELF - Executable and Linkable Format 二进制文件内包含如下段（Section）：

- .text: 代码段
- .rodata: read only 数据段
- .data: 数据段
- .bss: 未初始化数据段

!!! note "Quiz"
    ```c
    // 如下均定义/声明在全局作用域
    int a = 1; // 存储在.data段
    int b; // 存储在.bss段
    const int c = 2; // 存储在.rodata段
    ```

#### Memory Layout 内存布局

![](CS5.png)

在二进制文件运行时的内存布局。

注意 stack 从高地址向低地址增长，heap 从低地址向高地址增长。

![](CS6.png)