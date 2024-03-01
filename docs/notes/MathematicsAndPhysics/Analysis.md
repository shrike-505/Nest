---
comments: true
---


# 数学分析Ⅱ

> 任课教师：阮火军
!!! 成绩组成
    - 作业+点名 20%  
    - 小测 20%  
    - 期末 60%  
  
## 上下极限
定义：

$$
\begin{align*}
&如果给定数列\{x_n\}满足\\
&(1)\forall \epsilon > 0，\exists N > 0，当n>N时，使得x_n<a+\epsilon \\
&(2)\forall \epsilon > 0, \forall N > 0, \exists n>N, 使得x_n>a-\epsilon \\
&则称a为数列\{x_n\}的上极限，记为\lim_{n \to \infty} \sup x_n = a \\
\end{align*}
$$

结论：(1)有界数列必有上极限  
(2)若$\{x_n\}$存在发散于 $+\infty$ 的子列，则$\lim_{n \to \infty} \sup x_n = +\infty$

一个弱化一点的情况：  
对于有界数列，其收敛子列(由$Weierstrass$定理知必存在收敛子列)的极限值组成集合$E=\{ \xi \mid \xi = \lim_{n \to \infty} x_{n_k} \}$  
那么$\max E = \lim_{n \to \infty} \sup x_n$  
事实上，此时$\max E= \sup E$  
除此之外，对任意数列，E中还包含$\{x_n\}$的发散子列的非正常极限(亦即$\pm \infty$)  
此时$\lim_{n \to \infty} \sup x_n = \sup E$

### 性质：
$\forall$ 上极限存在的$\{x_n\}$,$\{y_n\}$，成立下述关系：   
(1)$\lim_{n \to \infty} \sup (x_n+y_n) \leq \lim_{n \to \infty} \sup x_n + \lim_{n \to \infty} \sup y_n \\$  
(2)$若\forall n \ge 1都存在x_n \le y_n,则\lim_{n \to \infty} \sup x_n \leq \lim_{n \to \infty} \sup y_n 且 \lim_{n \to \infty} \inf x_n \leq \lim_{n \to \infty} \inf y_n$  
(3)$\alpha>0时，\lim_{n \to \infty} \sup \alpha x_n = \alpha \lim_{n \to \infty} \sup x_n$  
(4)$\{x_n\}$收敛或发散至$\pm \infty$ 的充要条件是$\lim_{n \to \infty} \sup x_n = \lim_{n \to \infty} \inf x_n$  

## 级数
### 定义部分和数列
$$
\begin{align*}
&设\{x_n\}是数列，\{S_n\}是其部分和数列，即S_n=x_1+x_2+...+x_n \\
&令n\to \infty,则\{S_n\}的极限称为级数\sum_{n=1}^{\infty} x_n的和，记为\sum_{n=1}^{\infty} x_n \\
&\{S_n\}收敛的必要条件是\{x_n\}收敛
\end{align*}
$$

### 重要级数
$$
\begin{align*}
&\sum_{n=1}^{\infty} q^{n-1} = \frac{1}{1-q} \\
&亦即等比级数，在-1<q<1时收敛，和为\frac{1}{1-q} \\
&\sum_{n=1}^{\infty} \frac{1}{n^p}收敛当且仅当p>1 \\
&亦即p级数 \\
\end{align*}
$$

### 级数性质
线性性：

$$
\begin{align*}
&\sum_{n=1}^{\infty} (\alpha x_n + \beta y_n) = \alpha \sum_{n=1}^{\infty} x_n + \beta \sum_{n=1}^{\infty} y_n \\
&其中级数均收敛，\alpha,\beta为常数
\end{align*}
$$

结合性：

$$
\begin{align*}
&\underline{收敛}级数和中任意添加括号，其和不变 \\
&这是因为新级数的部分和数列是原级数的部分和数列的子列
\end{align*}
$$

一些充分/必要条件：

$$
\begin{align*}
&\sum_{n=1}^{\infty} x_n收敛 \Leftrightarrow \{S_n\}收敛 \\
&\Leftrightarrow (Cauthy准则) \forall \epsilon > 0, \exists N > 0, 当m>n>N时，有|S_m-S_n|<\epsilon \\
&\Leftrightarrow \forall \epsilon > 0, \exists N > 0, 当n>N时，有|\sum_{k=n+1}^{n+p} x_k|<\epsilon \\
&由此可见，增删改级数的有限项不影响收敛性\\
&取p=1，即得\{x_{n+1}\}<\epsilon，亦即\lim_{n \to \infty} x_n = 0(必要条件) \\
\end{align*}
$$

### 判别级数收敛的方法 
1. 定义法，判断${S_n}$是否收敛（略）  
2. 利用必要条件判断${x_n}$是否收敛于0  
3. 柯西收敛准则（略）  
#### 正项级数专属：
由于$S_n$单调递增，所以$\sum_{n=1}^{\infty} x_n$收敛的充要条件是$\{S_n\}$有上界

4. 比较判别法（$A$为正数）：  
    - 若$\forall n \ge 1, 0 \le x_n \le Ay_n$，且$\sum_{n=1}^{\infty} y_n$收敛，则$\sum_{n=1}^{\infty} x_n$收敛  
    - 大的收敛，小的也收敛
    - 若$\forall n \ge 1, 0 \le x_n \le Ay_n$，且$\sum_{n=1}^{\infty} x_n$发散，则$\sum_{n=1}^{\infty} y_n$发散  
    - 小的发散，大的也发散  
    - 由于修改级数的有限项后级数敛散性不变，因此上述条件可以只对从某个$N_0$后开始的项成立，即$\forall n \ge 1$可以变为$\exists N_0 \ge 0, \forall n \ge N_0$

5. 比较判别法的极限形式：  
    - 若$\lim_{n \to \infty} \frac{x_n}{y_n} = l (0 \le l \le +\infty)$，则  
        - 若$0 < l < +\infty$，则$\sum_{n=1}^{\infty} x_n$与$\sum_{n=1}^{\infty} y_n$同敛散
        - 若$l=0$，则$x_n$趋于0的速度更快，充分大项后$x_n$更小，则$\sum_{n=1}^{\infty} y_n$收敛$\Rightarrow \sum_{n=1}^{\infty} x_n$收敛  
        - 若$l=+\infty$，则$x_n$趋于0的速度更慢，充分大项后$x_n$更大，则$\sum_{n=1}^{\infty} y_n$发散$\Rightarrow \sum_{n=1}^{\infty} x_n$发散

??? 例
    - 判断$\sum_{n=1}^{\infty} 2^n \sin \frac{\pi}{3^n}$的敛散性:  
        与收敛级数$\pi(\frac{2}{3})^n$比较  
        $\frac{2^n \sin \frac{\pi}{3^n}}{\pi(\frac{2}{3})^n} = \frac{\sin \frac{\pi}{3^n}}{\frac{\pi}{3^n}} \rightarrow 1 (n \rightarrow \infty)$  
        因此$\sum_{n=1}^{\infty} 2^n \sin \frac{\pi}{3^n}$收敛  
    - 判断$\sum {(\sqrt[n]{a} - 1)} (a > 1)$的敛散性：  
        对$a^x$泰勒展开：$a^x = 1 + x\ln a + o(x)$  
        因此$\sqrt[n]{a} - 1 = \frac{\ln a}{n}+o(\frac{1}{n})$  
        因此$\frac{\sqrt[n]{a} - 1}{n} \rightarrow \ln a (n \rightarrow \infty)$，而$\sum \frac{1}{n}$发散，因此$\sum {(\sqrt[n]{a} - 1)}$发散  
    - 变式：判断$\sum_{n=1}^{\infty} (a^\frac{1}{n}+a^{-\frac{1}{n}}-2)$的敛散性：  
        分别泰勒展开到二阶：    
        $a^\frac{1}{n} = 1 + \frac{\ln a}{n} - \frac{\ln^2 a}{2n^2} + o(\frac{1}{n^2})$  
        $a^{-\frac{1}{n}} = 1 - \frac{\ln a}{n} - \frac{\ln^2 a}{2n^2} + o(\frac{1}{n^2})$  
        因此$\frac{a^\frac{1}{n}+a^{-\frac{1}{n}}-2}{\frac{\ln^2 a}{n^2}} \rightarrow 1 (n \rightarrow \infty)$，因此$\sum_{n=1}^{\infty} (a^\frac{1}{n}+a^{-\frac{1}{n}}-2)$收敛

由比较判别法，可以得到下面两种判别法： 

5. 根式判别法：  
    - 若$\lim_{n \to \infty} \sqrt[n]{x_n} = q$，则  
        - 若$q<1$，$\sum_{n=1}^{\infty} x_n$收敛  
        - 若$q>1$，$\sum_{n=1}^{\infty} x_n$发散   
            - 此时$\lim_{n \to \infty} \sqrt[n]{x_n}>1$，有无穷多项$x_n$都大于1
            - 因此$x_n$不趋于0，级数发散。
        - 若$q=1$，无法判断

6. 比值判别法：  
    - 若$\lim_{n \to \infty} \frac{x_{n+1}}{x_n} = q$，则  
        - 若$q<1$，$\sum_{n=1}^{\infty} x_n$收敛  
        - 若$q>1$，$\sum_{n=1}^{\infty} x_n$发散  
        - 若$q=1$，无法判断

5和6实际上是同一个意思，考虑到$\lim_{n \to \infty} \frac{x_{n+1}}{x_n} = \lim_{n \to \infty} {\sqrt[n]{x_n}}$，所以两者是等价的  

??? 例
    - 判断$\sum_{n=1}^{\infty} n^{2}e^{-n}$的敛散性：  
        $\sqrt[n]{n^{2}e^{-n}} = \sqrt[n]{n^{2}}\sqrt[n]{e^{-n}} = e^{-1}n^{\frac{2}{n}} \rightarrow e^{-1} < 1 (n \rightarrow \infty)$，因此$\sum_{n=1}^{\infty} n^{2}e^{-n}$收敛
    - 判断$\sum_{n=1}^{\infty} \frac{n^n}{3^{n}n!}$的敛散性：  
        $\frac{x_{n+1}}{x_n} = \frac{(n+1)^{n+1}3^{n}n!}{3^{n+1}(n+1)!n^{n}} = \frac{(n+1)^{n}}{3n} \rightarrow \frac{1}{3} < 1 (n \rightarrow \infty)$，因此$\sum_{n=1}^{\infty} \frac{n^n}{3^{n}n!}$收敛
    - 由于5和6本质一样，注意就题目选择更简单的方法

7. 积分判别法：  
    - 若$f(x)$在$[1,+\infty)$上连续，且$f(x) \ge 0$，$f(x)$单调递减，则$\sum_{n=1}^{\infty} f(n)$与$\int_{1}^{\infty} f(x)dx$同敛散

#### 交错级数
定义：级数$\sum_{n=1}^{\infty} (-1)^{n+1}u_n$称为交错级数,其中$u_n \ge 0$  
8. 交错级数的$Leibniz$判别法：  
    - 若$\{u_n\}$单调递减，且$\lim_{n \to \infty} u_n = 0$，则$\sum_{n=1}^{\infty} (-1)^{n+1}u_n$收敛

??? 例
    - 下述四个级数均收敛，证明略
        - $\sum_{n=1}^{\infty} \frac{(-1)^{n+1}}{n^p}(p>0)$
        - $\sum_{n=2}^{\infty} \frac{(-1)^{n}}{(\ln n)^q}(q>0)$
        - $\sum_{n=2}^{\infty} \frac{(-1)^{n}\ln n}{n}$
        - $\sum_{n=1}^{\infty} \frac{(-1)^{n+1}n^2}{n^3+1}$

