---
    comments: true
    tags: 
        - 大二上笔记
---

# 概率论（H）

> 任课教师：苏中根

!!! note "成绩组成"
    - 点名+作业：20%
    - 期中：20%
    - 期末：60%

## 几何概型

样本空间$\Omega$含有不可数个基本事件的结果，每个事件的概率为0。同时$\Omega$是$R^n$的可测区域，事件$A$是$\Omega$的可测子集。

$P(A)= \frac{m(A)}{m(\Omega)}$，其中$m(A)$是$A$的测度。

!!! note "Buffon 投针"
    - 一根长度为$l$的针，投在一张画满间距为$d$的平行线的平面上（$l<d$）。求针与线相交的概率。
        - 以针的任意位置为样本点，该点可由针的中点与最接近的线的距离$x$，以及针的倾斜角$\theta$确定。
        - 样本空间$\Omega = \{(x,\theta)|0\leq x\leq \frac{d}{2},0\leq \theta \leq \pi\}$为一矩形。
        - 其中，与线相交的事件$A = \{(x,\theta)|x\leq \frac{l}{2}\sin\theta\}$。
        - 则$P(A) = \frac{2l}{\pi d}$。（面积比）
## 概率空间

$P(\bigcup_{i=1}^{m}A_i) \leq \sum_{i=1}^{m}P(A_i)$

$LHS = \sum_{i=1}^{m}P(A_i) - \sum_{i \ne j}^{m}P(A_i \cap A_j)+\cdots + (-1)^{m-1}P(\bigcap_{i=1}^{m}A_i)$

!!! defination "全概率公式"
    若$B_1,B_2,\cdots,B_n$是样本空间$\Omega$的一个划分，即$B_i \cap B_j = \emptyset$，$\bigcup_{i=1}^{n}B_i = \Omega$，则对任意事件$A$有$P(A) = \sum_{i=1}^{n}P(A|B_i)P(B_i)$。

!!! defination "贝叶斯公式"
    若$B_1,B_2,\cdots,B_n$是样本空间$\Omega$的一个划分，即$B_i \cap B_j = \emptyset$，$\bigcup_{i=1}^{n}B_i = \Omega$，则对任意事件$A$有$P(B_i|A) = \frac{P(A|B_i)P(B_i)}{\sum_{j=1}^{n}P(A|B_j)P(B_j)}$。

## 随机变量
### 离散型随机变量

- Possion分布
    - $X$取非负整数，$P(X=k) = \frac{\lambda^k}{k!}e^{-\lambda}$
    - 用于描述单位时间内某事件发生的次数
- 二项分布
    - $X$取非负整数，$P(X=k) = C_n^k p^k(1-p)^{n-k}$
    - 用于描述$n$次独立重复试验中成功次数的分布


### 连续型随机变量
分布列$X$的概率密度函数$f(x)$满足：

1. $f(x) \geq 0$
2. $\int_{-\infty}^{+\infty}f(x)dx = 1$
3. $P(X \in B) = \int_{B}f(x)dx$

!!! defination "分布函数"
    称 $F(x) = P(\xi \leq x)$ 为随机变量$\xi(\omega)$的分布函数。

    - 具有以下性质：
        - $P(a \leq \xi \leq b) = F(b) - F(a)$
        - 单调不减性：$a \leq b \Rightarrow F(a) \leq F(b)$
        - $F(-\infty) = 0, F(+\infty) = 1$
        - 右连续性：$\lim_{x \to x_0^+}F(x) = F(x_0)$
        - $F(x)=\int_{-\infty}^{x}f(t)dt$
    ??? example "example"
        
        - 在三角形$ABC$内任取一点$P$，$P$到$BC$的距离为$\xi$，求$\xi$的分布函数。
            - 设BC边上高为$h$，$x \leq 0$时，$F(x) = 0$；$0 \leq x \leq h$时，在三角形内作平行于BC的DE，其与BC的距离为$x$，则$\{\xi \leq x\}$表示点P落在梯形DECB内。
            - ![](image-7.png)
            - $P(\xi \leq x) = \frac{S_{DECB}}{S_{ABC}} = 1 - (1-\frac{x}{h})^2$
            - $x \geq h$时，$F(x) = 1$
            - 则$F(x) = \begin{cases} 0 & x \leq 0 \\ 1-(1-\frac{x}{h})^2 & 0 \leq x \leq h \\ 1 & x \geq h \end{cases}$

- 常见的连续型随机变量：
    - 均匀分布
        - 向$(a,b)$区间内随机取点
        - 每一点是等可能的，即$P(X = x) = 0$
        - 则$P(X \in A) = \frac{m(A)}{m(\Omega)} = \frac{|A|}{b-a}$
    - 指数分布
        - $X$取非负实数，$f(x) = \begin{cases} \lambda e^{-\lambda x} & x \geq 0 \\ 0 & x < 0 \end{cases}$
        - $P(X \gt x) = e^{-\lambda x}$
        - 通常用于描述使用寿命等（使用寿命大于x的概率是$e^{-\lambda x}$）
        - 无记忆性：$P(X \gt s+t|X \gt s) = P(X \gt t)$
    - 正态分布
        - $X$取实数，$f(x) = \frac{1}{\sqrt{2\pi}\sigma}e^{-\frac{(x-\mu)^2}{2\sigma^2}}$
        - 记为$N(\mu,\sigma^2)$
        - 对标准正态分布，$\mu = 0, \sigma = 1$，则$P(X \leq x) = \Phi(x)$
        - 对于一般的$\xi$ ~ $N(\mu,\sigma^2)$，记$Z = \frac{\xi - \mu}{\sigma}$，则$Z$ ~ $N(0,1)$, $P(\xi \leq x) = \Phi(\frac{x-\mu}{\sigma})$

### 一般随机变量

??? example "example"
    $P(X=0) = \frac{1}{2}$  
    $P(X>x) = \frac{1}{2} e^{-x}, x \geq 0$