---
comments: true
---


# 数学分析Ⅱ

> 任课教师：阮火军

!!! abstract "成绩组成"
    - 作业+点名 20%  
    - 小测 20%  
    - 期末 60%  
  
## 上下极限
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
线性性：$\sum_{n=1}^{\infty} (\alpha x_n + \beta y_n) = \alpha \sum_{n=1}^{\infty} x_n + \beta \sum_{n=1}^{\infty} y_n$  
其中级数均**收敛**，$\alpha,\beta$为常数

结合性：**收敛**级数和中任意添加括号，其和不变  
这是因为新级数的部分和数列是原级数的部分和数列的子列  

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

### 判别级数敛散的方法 
1. 定义法，判断${S_n}$是否收敛
2. 利用必要条件先判断${x_n}$是否收敛于0
3. 柯西收敛准则
4. 收敛+发散=发散，收敛+收敛=收敛
#### 正项级数专属：
由于$S_n$单调递增，所以$\sum_{n=1}^{\infty} x_n$收敛的充要条件是$\{S_n\}$有上界

1. 比较判别法（$A$为正数）：  
    - 若$\forall n \ge 1, 0 \le x_n \le Ay_n$，且$\sum_{n=1}^{\infty} y_n$收敛，则$\sum_{n=1}^{\infty} x_n$收敛  
    - 大的收敛，小的也收敛
    - 若$\forall n \ge 1, 0 \le x_n \le Ay_n$，且$\sum_{n=1}^{\infty} x_n$发散，则$\sum_{n=1}^{\infty} y_n$发散  
    - 小的发散，大的也发散  
    - 由于修改级数的有限项后级数敛散性不变，因此上述条件可以只对从某个$N_0$后开始的项成立，即$\forall n \ge 1$可以变为$\exists N_0 \ge 0, \forall n \ge N_0$

2. 比较判别法的极限形式：  
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

3. 根式判别法：  
    - 若$\lim_{n \to \infty} \sqrt[n]{x_n} = q$，则  
        - 若$q<1$，$\sum_{n=1}^{\infty} x_n$收敛  
        - 若$q>1$，$\sum_{n=1}^{\infty} x_n$发散   
            - 此时$\lim_{n \to \infty} \sqrt[n]{x_n}>1$，有无穷多项$x_n$都大于1
            - 因此$x_n$不趋于0，级数发散。
        - 若$q=1$，无法判断

4. 比值判别法：  
    - 若$\lim_{n \to \infty} \frac{x_{n+1}}{x_n} = q$，则  
        - 若$q<1$，$\sum_{n=1}^{\infty} x_n$收敛  
        - 若$q>1$，$\sum_{n=1}^{\infty} x_n$发散  
        - 若$q=1$，无法判断

3和4实际上是同一个意思，考虑到$\lim_{n \to \infty} \frac{x_{n+1}}{x_n} = \lim_{n \to \infty} {\sqrt[n]{x_n}}$，所以两者是等价的  

??? 例
    - 判断$\sum_{n=1}^{\infty} n^{2}e^{-n}$的敛散性：  
        $\sqrt[n]{n^{2}e^{-n}} = \sqrt[n]{n^{2}}\sqrt[n]{e^{-n}} = e^{-1}n^{\frac{2}{n}} \rightarrow e^{-1} < 1 (n \rightarrow \infty)$，因此$\sum_{n=1}^{\infty} n^{2}e^{-n}$收敛
    - 判断$\sum_{n=1}^{\infty} \frac{n^n}{3^{n}n!}$的敛散性：  
        $\frac{x_{n+1}}{x_n} = \frac{(n+1)^{n+1}3^{n}n!}{3^{n+1}(n+1)!n^{n}} = \frac{(n+1)^{n}}{3n} \rightarrow \frac{1}{3} < 1 (n \rightarrow \infty)$，因此$\sum_{n=1}^{\infty} \frac{n^n}{3^{n}n!}$收敛
    - 由于3和4本质一样，注意就题目选择更简单的方法

5. 积分判别法：  
    - 若$f(x)$在$[1,+\infty)$上连续，且$f(x) \ge 0$，$f(x)$单调递减，则$\sum_{n=1}^{\infty} f(n)$与$\int_{1}^{\infty} f(x)dx$同敛散

#### 交错级数
定义：级数$\sum_{n=1}^{\infty} (-1)^{n+1}u_n$称为交错级数,其中$u_n \ge 0$  

1. 交错级数的$Leibniz$判别法：  
    - 若$\{u_n\}$单调递减，且$\lim_{n \to \infty} u_n = 0$，则$\sum_{n=1}^{\infty} (-1)^{n+1}u_n$收敛

??? 例
    - 下述四个级数均收敛，证明略
        - $\sum_{n=1}^{\infty} \frac{(-1)^{n+1}}{n^p}(p>0)$
        - $\sum_{n=2}^{\infty} \frac{(-1)^{n}}{(\ln n)^q}(q>0)$
        - $\sum_{n=2}^{\infty} \frac{(-1)^{n}\ln n}{n}$
        - $\sum_{n=1}^{\infty} \frac{(-1)^{n+1}n^2}{n^3+1}$

### 绝对收敛与条件收敛
定义：若$\sum_{n=1}^{\infty} |x_n|$收敛，则$\sum_{n=1}^{\infty} x_n$收敛，称后者绝对收敛（**超级收敛！**）。  
由$\sum_{k=n+1}^{n+p} x_k \le ||x_{n+1}|+\dots +|x_{n+p}|| \le \epsilon$既得。  
若$\sum_{n=1}^{\infty} x_n$收敛，而$\sum_{n=1}^{\infty} |x_n|$发散，则称前者条件收敛。  

??? 例
    - 判断$\sum_{n=1}^{\infty} \frac{x^{n}}{n^p}$的敛散性：  
      - 利用条件/绝对收敛，令$u_n = abs(\frac{x^{n}}{n^p}) = \frac{|x|^n}{n^p}$  
      - 利用根式判别法，$\sqrt[n]{u_n} = \frac{|x|}{n^{\frac{p}{n}}} \rightarrow |x| (n \rightarrow \infty)$
      - 因此，当$|x|<1$时，$\sum_{n=1}^{\infty} \frac{x^{n}}{n^p}$绝对收敛
      - 当$|x|>1$时，$\frac{x^n}{n^p}\rightarrow \infty$,$\sum_{n=1}^{\infty} \frac{x^{n}}{n^p}$发散
      - $x = 1$时，原级数为p级数，当$p>1$时绝对收敛，当$p \le 1$时发散
      - $x = -1$时，原级数为交错级数$\sum_{n=1}^{\infty} \frac{(-1)^{n}}{n^p}$
        - $p>1$时，级数的绝对值收敛，级数本身由$Liebniz$判别法收敛，因此绝对收敛。
        - $0< p \le 1$时，级数的绝对值发散，级数本身由$Liebniz$判别法发散，因此条件收敛。
        - $p \le 0$时，$\frac{(-1)^n}{n^p}$不趋向于0，级数发散

#### 有用的引论
$Abel变换$:对于数列$a_n$,$b_n$，记$A_n,B_n$分别为其前n项和，  
则$\sum_{k=1}^{n} a_k b_k = A_n B_n + \sum_{k=1}^{n-1} B_k(a_{k}-a_{k+1})$  

$Abel引理$:记$B^{\ast}=\max \{|B_k|,1 \le k \le n\}, a^{\ast} = \max \{|a_k|,1 \le k \le n\}$  
上个段落变换后的式子  
$\le |a_1-a_2||B_1|+|a_2-a_3||B_2|+\dots+|a_{n-1}-a_n||B_{n-1}|+|a_n||B_n|$  
$\le (|a_1-a_2|+|a_2-a_3|+\dots+|a_{n-1}-a_n|+|a_n|)B^{\ast}$  
当$a_n$单调时，$a_1 - a_2$,$a_2 - a_3$,$\dots$,$a_{n-1} - a_n$同号。  
**因此先取绝对值在求和等于先求和再取绝对值。**  
因此上式 $= (|a_1 - a_n|+|a_n|)B^{\ast} \le 3a^{\ast}B^{\ast}$  

得到引理: 若(1)$a_n$单调，(2)$B_n$为$b_n$前n项和  
记$B^{\ast}=\max \{|B_k|,1 \le k \le n\}, a^* = \max \{|a_k|,1 \le k \le n\}$，则$\sum_{k=1}^{n} a_k b_k \le 3a^{\ast}B^{\ast}$  

- 由引论可推出下述定理：
  + Dirichlet判别法：若$\{a_n\}$单调趋于0，$\sum b_n$有界（$b_n$的部分和数列有界），则$\sum_{n=1}^{\infty} a_n b_n$收敛
  + Abel判别法：若$\{a_n\}$单调有界，$\sum b_n$收敛，则$\sum_{n=1}^{\infty} a_n b_n$收敛  

??? 例
    + 若$a_n$单调递减且趋向于0，求证$\forall x \in [0,2\pi]$，$\sum_{n=1}^{\infty} a_n \sin nx$收敛  
        - 由$Dirichlet$判别法，只需证明$\sum \sin nx$有界  
        - (trick-积化和差)对形如$\sin kx$的数列求和，乘上一个$2\sin \frac{x}{2}$，得到$2\sin \frac{x}{2} \sin kx = \cos(k-\frac{1}{2})x-\cos(k+\frac{1}{2})x$  
        - 因此,$2\sin \frac{x}{2} \sum \sin kx = \sum (\cos (k-\frac{1}{2})x-\cos (k+\frac{1}{2})x) = \cos \frac{x}{2}- \cos (n+\frac{1}{2} )x$
        - 因此$\forall n \ge 1, |2 \sin \frac{x}{2}\sum \sin kx| = |\cos \frac{x}{2}- \cos (n+\frac{1}{2} )x| \le 2$
        - 因此$|\sum \sin kx| \le \frac{1}{|\sin \frac{x}{2}|}(有界)$    
        - 由Dirichlet判别法，$\sum_{n=1}^{\infty} a_n \sin nx$收敛
    + 若$\sum b_n$收敛，则下述级数都收敛： 
        - $\sum \frac{b_n}{n^p}$
        - $\sum \frac{b_n}{\sqrt{n+1}}$
        - $\sum b_n (1+\frac{1}{n})^n$

#### 绝对收敛与条件收敛的性质
若$\sum_{n=1}^{\infty} x_n$绝对收敛，则$\sum_{n=1}^{\infty} x_n^{+}$与$\sum_{n=1}^{\infty} x_n^{-}$均绝对收敛。  
若$\sum_{n=1}^{\infty} x_n$条件收敛，则$\sum_{n=1}^{\infty} x_n^{+}$与$\sum_{n=1}^{\infty} x_n^{-}$均发散。  

### 级数的重排
定义：设$\varphi$是$N^{\ast}$上的双射，称级数$\sum_{n=1}^{\infty} x_{\varphi(n)}$是级数$\sum_{n=1}^{\infty} x_n$的重排。  
亦即对级数进行加法交换律。  

定理：若$\sum_{n=1}^{\infty} x_n$绝对收敛，则$\sum_{n=1}^{\infty} x_{\varphi(n)}$也绝对收敛，且其和与原级数相同。  

$Riemann定理$:若$\sum_{n=1}^{\infty} x_n$条件收敛，则一定存在某个重排$\sum_{n=1}^{\infty} x_{\varphi(n)}$，使得其和为任意给定的实数。  

### 级数的乘积
1. $Cauchy$乘积：$\sum_{n=1}^{\infty} a_n \sum_{n=1}^{\infty} b_n = \sum_{n=1}^{\infty} (a_1 b_n + a_2 b_{n-1} + \dots + a_n b_1)$ (排成矩阵后的第n条对角线上的元素和)  
2. 正方形乘积：$\sum_{n=1}^{\infty} a_n \sum_{n=1}^{\infty} b_n = \sum_{n=1}^{\infty} (a_1 b_n + a_2 b_n + \dots + a_n b_n +a_n b_{n-1} + \dots + a_n b_1)$(排成矩阵后的第n列到第n行组成的直角上的元素和)  

#### Cauchy定理
设$\sum a_n$与$\sum b_n$绝对收敛于A,B，  
则对于由所有乘积$a_i b_j$任意排序再求和得到的级数也绝对收敛，  
且其和等于AB。 

## 函数列与函数项级数
定义：$f_1,f_2,\dots,f_n,\dots$是定义在$E$上的函数，  
则$\{f_n\}$为$E$上的一个函数列。
$\forall x \in E$，若$\{f_n(x)\}$收敛于$f(x)$，则称$\{f_n\}$收敛于$f$，记为$f_n \rightarrow f$

若$x_0 \in E$，所有$\{f_n(x_0)\}$都收敛于$f(x_0)$，则称$\{f_n\}$在$x_0$处收敛于$f(x_0)$，记为$f_n \rightarrow f(x_0)$  
点集$\{x \in E \mid \{f_n(x)\} 收敛\}$称为$\{f_n\}$的收敛域  

点态收敛：$\forall x \in D, \forall \epsilon > 0, \exists N(\epsilon ,x) > 0, 当n>N(\epsilon ,x)时，有|f_n(x)-f(x)|<\epsilon$  
一致收敛：$\forall \epsilon > 0, \exists N(\epsilon) > 0(与x无关), 当n>N(\epsilon)时，有|f_n(x)-f(x)|<\epsilon$，记为$f_n \rightrightarrows f$  
不一致收敛：$\exists \epsilon_0 > 0, \forall N > 0, \exists n>N, 使得|f_n(x)-f(x)| \ge \epsilon_0$
一致收敛必定点态收敛。

??? 例
    - 证明$f_n(x) = x^n 在[0,1]$不一致收敛  
        - $f(x) = \lim_{n \to \infty} x^n = \begin{cases} 0 & x \in [0,1) \\ 1 & x = 1 \end{cases}$
        - 取$\epsilon_0 = \frac{1}{2}$，则$\forall N > 0$, 令$n = N+1$, 令$x = \sqrt[n](\frac{1}{2})$
        - 则$|f_n(x)-f(x)| = \frac{1}{2} \ge \epsilon_0$
    - 而这个函数在$[0,1-\delta],\forall \delta \in (0,1)$上一致收敛
        - $\forall x \in [0,1-\delta], |f_n(x)-f(x)| = x^n \le (1-\delta)^n \le (1-\delta)^N = \epsilon (取N=\frac{\ln \epsilon}{\ln (1-\delta)})$

### 柯西收敛准则（典中典）
定义：$\{f_n\}$在$E$上一致收敛的充要条件是$\forall \epsilon > 0, \exists N(\epsilon) > 0, 当m,n>N(\epsilon)时，有|f_n(x)-f_m(x)|<\epsilon$  
由此可推出另一充要条件：记$\sup_{x \in E} |f_n(x)-f(x)| = M_{n}$，则$\{f_n\}$在$E$上一致收敛的充要条件是$\lim_{n \to \infty} M_{n} = 0$

??? 例
    - 判断$f_n(x) = nxe^{-nx^2}$在$R$上的一致收敛性
    - （配凑$nx^2$）$\lim_{n \to \infty} nxe^{-nx^2} = \frac{1}{x} \lim_{n \to \infty} \frac{nx^2}{e^{nx^2}} = \frac{1}{x} 0 = 0$
    - 因此极限函数$f(x) = 0$,$f_n(x)-f(x) = f_n(x)$  
    - 求导得$f_n'(x) = ne^{-nx^2}(1-2nx^2)$，令$f_n'(x) = 0$得$x = \frac{1}{\sqrt{2n}}$，此为最大值点
    - 则$M_n = f_n(\frac{1}{\sqrt{2n}})$，不趋于0.

### D-A判别法
函数项级数$\sum_{n=1}^{\infty} a_n b_n$满足以下两个条件之一时，其在$E$上一致收敛：

- $\{a_n(x)\}$对每一固定的$x \in E$关于$n$单调，且在$E$上一致有界，$\sum_{n=1}^{\infty}b_n(x)$在$E$上一致收敛。（Abel判别法）
- $\{a_n(x)\}$对每一固定的$x \in E$关于$n$单调，且在$E$上一致收敛于0，$\sum_{n=1}^{\infty}b_n(x)$的部分和数列$\sum_{k=1}^{n}b_k(x)$在$E$上一致有界。（Dirichlet判别法）

## 幂级数
定义：形如$\sum_{n=0}^{\infty} a_n(x-x_0)^n = a_0 + a_1(x-x_0)+ \cdots$的函数项级数称为幂级数  

只需研究$\sum a_n x$的性质。

- Abel第一定理：
    - 若上述幂级数在点$x=\xi$处收敛，则对于任意$|x|<|\xi|$，幂级数在点$x$处绝对收敛  

由此得到收敛半径的定义：

- 令$R = \sup \{ |x| \mid \sum_{n=0}^{\infty} a_n x^n 收敛 \}$，称$R$为幂级数的收敛半径
- $(-R,R)$称为幂级数的收敛区间
- 定理：若$\lim_{n \to \infty} \sqrt[n]{|a_n|} = A$，则$R = \frac{1}{A} = \begin{cases} 0 & A = +\infty \\ +\infty & A = 0 \\ \frac{1}{A} & 0 < A < +\infty \end{cases}$
- 推论：若$\lim_{n \to \infty} \frac{|a_{n+1}|}{|a_n|} = A$，则$R = \frac{1}{A}$
- 收敛域：单独探讨$x=R$与$x=-R$的收敛性后加到收敛区间内

- Abel第二定理：
    - 若幂级数$\sum_{n=0}^{\infty} a_n x^n$的收敛半径为$R>0$，则其在$(-R,R)$中内闭一致收敛
    - 若其在$x=R$处收敛，则其在$[0,R]$上一致收敛；若其在$x=-R$处收敛，则其在$[-R,0]$上一致收敛

性质：

- 连续性：幂级数在其收敛区间内连续
- 可积性：$\forall [a,b] \subset (-R,R)$，幂级数的和函数在$[a,b]$上可积，且$\int_{a}^{b} \sum_{n=0}^{\infty} a_n x^n dx = \sum_{n=0}^{\infty} a_n \int_{a}^{b} x^n dx$
    - 推论：取$a=0$, $b=x$，得$\int_{0}^{x} \sum_{n=0}^{\infty} a_n t^n dt = \sum_{n=0}^{\infty} \frac{a_n}{n+1} x^{n+1}$
        - 上面这个级数的收敛半径$\ge$原级数的收敛半径

??? 例
    $\sum_{n=0}^{\infty} x^n$的收敛域为$(-1,1)$  
    逐项积分得$\sum_{n=0}^{\infty} \frac{1}{n+1} x^{n+1}$的收敛域为$[-1,1)$

- 可微性：幂级数的和函数在其收敛区间内可导，且导函数为逐项求导，求导后收敛半径不变
    - 推论：取$a=0$, $b=x$，得$\sum_{n=0}^{\infty} a_n x^n$的和函数的导函数为$\sum_{n=0}^{\infty} a_n n x^{n-1}$

### 幂级数展开
设$f$是$\sum a_n (x-x_0)^n$在(x_0 - r,x_0 + r)上的和函数，则$f$在该区间任意阶可导，且$f^{(k)}(x) = n(n-1) \cdots (n-k+1)a_n(x-x_0)^{n-k}$    
代入$x = x_0$, 得到$f^{(k)}(x_0) = k!a_k$，因此$a_k = \frac{f^{(k)}(x_0)}{k!}$，这说明幂级数各项的系数由和函数在$x_0$的各阶导数决定  

得泰勒级数：$f(x) = \sum_{n=0}^{\infty} \frac{f^{(n)}(x_0)}{n!}(x-x_0)^n$，$x_0 = 0$时称为麦克劳林级数

- 此时有Lagrange余项：$R_n(x) = \frac{f^{(n+1)}(\xi)}{(n+1)!}x^{n+1}$，$\xi \in (0,x)$, 
- 积分型余项：$R_n(x) = \int_{0}^{x} \frac{(x-t)^n}{n!}f^{(n+1)}(t)dt$
- Cauchy余项：$R_n(x) = \frac{1}{n!} f^{(n+1)}(\theta x)(1-\theta)^n x^{n+1}$，$\theta \in (0,1)$

定理（判断和函数的存在性）：

- 若$\exists M > 0, \forall x \in (x_0 - r,x_0 + r)$, 当$n$充分大时有$|f^{(n)}(x)| \le M$，则$\forall x \in (x_0 - r,x_0 + r)$, $f(x) = \sum_{n=0}^{\infty} \frac{f^{(n)}(x_0)}{n!}(x-x_0)^n$

??? 常见幂级数展开
    - $(1+x)^{\alpha} = 1 + \sum \frac{\alpha(\alpha-1)\cdots(\alpha-n+1)}{n!}x^n$，$|x|<1$
    - 令$\alpha = -1$，得$\frac{1}{1+x} = \sum (-1)^n x^n$，$|x|<1$
    - 对上式逐项求积分，得$\ln(1+x) = \sum \frac{(-1)^{n}}{n+1}x^{n+1}$，$x \in (-1,1]$
    - 用$x^2$替换$x$，得$\frac{1}{1+x^2} = \sum (-1)^n x^{2n}$，$|x|<1$
    - 逐项积分得到$\arctan x = \sum \frac{(-1)^n}{2n+1}x^{2n+1}$，$|x| \le 1$
    - 令$\alpha = -\frac{1}{2}$，得$\frac{1}{\sqrt{1+x}} = 1+ \sum \frac{(-1)^n(2n-1)!!}{(2n)!!}x^n$，$|x|<1$
    - 用$-x^2$代替$x$，得$\frac{1}{\sqrt{1-x^2}} = 1+ \sum \frac{(2n-1)!!}{(2n)!!}x^{2n}$，$|x|<1$
    - 逐项积分得到$\arcsin x = \sum \frac{(2n-1)!!}{(2n)!!} \frac{x^{2n+1}}{2n+1}$，$|x| \le 1$

??? 例
    - 求$f(x) = \frac{1}{x^2}$在$x = 1$处展开
        - 注意到与$\frac{1}{x}$的关系
        - $\frac{1}{x} = \frac{1}{1+(x-1)} = \sum (-1)^n (x-1)^n$，$|x-1|<1$
        - 求导，$\frac{1}{x^2} = \sum_{n=1}^{\infty} (-1)^{n-1} n(x-1)^{n-1}$，$|x-1|<1$

## Fourier级数
### 三角级数
定义：形如$\frac{a_0}{2} + \sum_{n=1}^{\infty} (a_n \cos nx + b_n \sin nx)$的级数称为三角级数  

性质：(1)周期性：$T = \frac{2\pi}{n}$  
(2) 正交性：$\int_{-\pi}^{\pi} \cos nx \cos mx dx = \int_{-\pi}^{\pi} \sin nx \sin mx dx = \pi \delta_{nm} (\delta_{nm}=1,n=m;=0,n \ne m)$  

### Fourier
若$f$以$2\pi$为周期，傅里叶系数$a_n = \frac{1}{\pi} \int_{-\pi}^{\pi} f(x) \cos nx dx$，$b_n = \frac{1}{\pi} \int_{-\pi}^{\pi} f(x) \sin nx dx$  
以$a_n,b_n$为系数的三角级数称为$f$的Fourier级数