---
    comments: true
    tags:
        - 大二上笔记
---

> No...

# 计算机系统 Ⅱ

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