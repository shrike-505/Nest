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

- Static linking
    - All needed code is packed in single binary, leading to large binary
    - `_start` is executed after evecve system call
    - ![](Sys7.png)
- Dynamic linking
    - Reuse libraries to reduce ELF file size
    - Howto resolve library calls?
        - It is the loader who resolves lib calls.
    - Entry point 是 loader

![](Sys8.png)

![](Sys9.png)

`_libc_start_main`: Setup environment and stack, then call main

#### Memory Layout 内存布局

![](CS5.png)

在二进制文件运行时的内存布局。

注意 stack 从高地址向低地址增长，heap 从低地址向高地址增长。

![](CS6.png)

存储在Memory中的数据，基本单元是Byte，每个数据都被一个地址标记。

> DMA(Direct Memory Access)：设备直接访问内存，不经过CPU。

### OS Structure
操作系统是一种“Resource Allocator and Abstracter”，它管理硬件资源，提供抽象接口。

![](Sys3.png)

### Event
Event 分为 Interrupt - 由硬件引起，Exception - 由软件引起。

一些指令会被限制：只有OS能够执行它们（Privileged Instructions），CPU是如何判断当前状态能否执行这些指令的？

- All modern processors support (at least) two modes of execution:
    - User mode: In this mode protected instructions cannot be executed
    - Kernel mode: In this mode all instructions can be executed
    - User code executes in user mode
    - OS code executes in kernel mode
    - The mode is indicated by a status bit in a protected control register
        - The CPU checks this bit before executing a protected instruction

![](Sys4.png)

Event是操作流中“不被预期”的情况，CPU会根据Event的类型，调用相应的Handler。

- An event stops execution, changes mode, and changes context 
- The kernel defines a handlerfor each event type

OS Code running: Boot -> Wait for Event -> Event Handler -> Return to Wait

特殊的 Event：

- System Call - 会导致Trap -> System Call Handler
    - 发生于User Mode下需要执行Privileged Instructions的情况
        - e.g., to create a process, write to disk, read from the network card
        - 每种ISA都有自己的System Call
        - ![](Sys6.png)
        - 为什么`printf`需要SysCall `libc_write`？
            - 打印到终端这种Device I/O需要 Kernel Mode (Privileged Instructions)
- Timer Interrupt - 会导致Regularly Interrupt -> Timer Interrupt Handler

![](Sys5.png)

### System Call

`strace`可以查看程序的System Call。

https://www.cnblogs.com/machangwei-8/p/10388883.html

Types of System Calls:

- Process control
    - create process, terminate process
    - end, abort
    - load, execute
    - get process attributes, set process attributes
    - wait for time
    - wait event, signal event
    - allocate and free memory
    - Dump memory if error
    - Debuggerfor determining bugs, single step execution
    - Locks for managing access to shared data between processes
- File management
    - create file, delete fileopen, close fileread, write, reposition
    - get and set file attributes
- Device management
    - request device, release device
    - read, write, repositionget device attributes, set device attributes
    - logically attach or detach devices
- Information maintenance
    - get time or date, set time or date
    - get system data, set system data
    - get and set process, file, or device attributes
- Communications
    - create, delete communication connection
    - send, receive messages if message passing model to host nameor process name
        - From client to server
    - Shared-memory model create and gain access to memory regions
    - transfer status information
    - attach and detach remote devices
- Protection
    - Control access to resources
    - Get and set permissions
    - Allow and deny user access