---
    comments: true
    tags: 
        - 大三上笔记
---

> 不是哥们

# 优化基础理论与方法

> 任课教师：张寅  
> 参考书籍：陈宝林《最优化理论与算法》，刘浩洋、户将、李勇锋、文再文《最优化计算方法（简化版）》

## General Formulation

令 $x$ 是一个 $n$ 维实向量，$S\subseteq \mathbb{R}^n$，且 $f_0 (x),...,f_m (x)$ 是 $x$ 在 $S$ 上的一些实值函数，一般最小化问题可表示为

$$\min f_0(x) \\ \text{subject to: } f_i(x) \leq 0, i=1,...,m$$

其中 $f_0 (x)$ 称为**目标函数**，向量函数 $f(x) = (f_1 (x),...,f_m (x))^T$ 称为**泛函约束向量**，$S$ 称为**基本可行集**，对变量进行**结构化约束**（Structural Constraint），集合 $Q = \{x\in S|f_i (x) \leq 0, i=1,...,m\}$ 称为上述问题的**可行集**。

问题用人话解释就是：在满足一系列约束条件的前提下，找到一个变量 $x$ 使得目标函数 $f_0 (x)$ 取得最小值。

对上述这个最小化问题可以进行分类：

- 有约束问题：$Q \subset \mathbb{R}^n$
- 无约束问题：$Q = \mathbb{R}^n$
- 光滑问题：所有函数 $f_i (x)$ 都是可微的
- 非光滑问题：存在不可微的分量 $f_k (x)$
- 线性约束问题：所有函数（从 i = 1 开始） $f_i (x)$ 都是线性的
    - 如果 $f_0 (x)$ 也是线性的，则称为**线性优化问题**
    - 二次优化问题：$f_0 (x)$ 是二次函数
- $Q \neq \emptyset$：**可行问题**
- $\exists x\in Q$ 对于所有不等式约束满足 $f_j (x) < 0(或 f_j (x) \geq 0)$，且对于所有等式满足 $f_j (x) = 0$：**严格可行问题**
- $x^*$ 是优化全局解，如果 $\forall x\in Q, f_0 (x^*) \leq f_0 (x)$
    - 此时 $f_0 (x^*)$ 称为**最优值**
- $x^*$ 是局部解，如果 $\forall x \in NBR(x^*, \epsilon) \cap Q, f_0 (x^*) \leq f_0 (x)$
    - 即在一个小邻域内函数值最小

!!! definition "向量范数"
    称实值函数 $|| · || : \mathbb{R}^n \to \mathbb{R}$ 为 $n$ 维向量空间 $\mathbb{R}^n$ 上的**范数**，如果对 $\forall x,y \in \mathbb{R}^n, \forall \alpha \in \mathbb{R}$ 满足：

    - （正定性）$||x|| \geq 0$，取等仅当 $x=0$
    - （齐次性）$||\alpha x|| = |\alpha| ||x||, \alpha \in \mathbb{R}$
    - （三角不等式）$||x+y|| \leq ||x|| + ||y||$

    记 $x = (x_1,...,x_n)^T$，则常用的向量范数有：

    - $L1$ 范数：$||x||_1 = \sum_{i=1}^n |x_i|$
    - $L2$ 范数：$||x||_2 = (\sum_{i=1}^n x_i^2)^{1/2}$
    - $L\infty$ 范数：$||x||_\infty = max\{|x_i|: i=1,...,n\}$
    - 对于 $1 \leq p < \infty$，$Lp$ 范数：$||x||_p = (\sum_{i=1}^n |x_i|^p)^{1/p}$

!!! definition "矩阵范数"
    $A$ 为 $m \times n$ 矩阵，$|| · ||_\alpha$ 是 $\mathbb{R}^m$ 上的向量范数，$|| · ||_\beta$ 是 $\mathbb{R}^n$ 上的向量范数，则 $A$ 的**矩阵范数**定义为 $||A|| = \max_{||x||_\beta = 1} ||Ax||_\alpha, x \in \mathbb{R}^n$。

    显然 $||I|| = 1$，矩阵范数具有以下性质：

    - （正定性）$||A|| \geq 0$，取等仅当 $A=0$
    - （齐次性）$||\alpha A|| = |\alpha| ||A||, \alpha \in \mathbb{R}$
    - （三角不等式）$||A+B|| \leq ||A|| + ||B||$
    - （子乘性）$||AB|| \leq ||A|| ||B||$

    常用的矩阵范数有：

    - $||A||_1 = \max_{1 \leq j \leq n} \sum_{i=1}^m |a_{ij}|$（列和范数）
    - $||A||_2 = \sqrt{\lambda_{max} (A^T A)}$（谱范数，$\lambda_{max}$ 是 $A^T A$ 的最大特征值）
    - $||A||_\infty = \max_{1 \leq i \leq m} \sum_{j=1}^n |a_{ij}|$（行和范数）