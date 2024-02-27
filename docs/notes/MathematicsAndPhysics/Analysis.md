# 数学分析Ⅱ

> 任课教师：阮火军
!!! 成绩组成
    - 作业+点名 20%  
    - 小测 20%  
    - 期末 60%  
  
## 上下极限
$$
\begin{align*}
&如果给定数列\{x_n\}满足\\
&(1)\forall \epsilon > 0，\exists N > 0，当n>N时，使得x_n<a+\epsilon \\
&(2)\forall \epsilon > 0, \forall N > 0, \exists n>N, 使得x_n>a-\epsilon \\
&则称a为数列\{x_n\}的上极限，记为\lim_{n \to \infty} \sup x_n = a \\
\end{align*}
$$

结论：有界数列必有上极限 

$$
\begin{gather}
    若\{x_n\}存在发散于 +\infty 的子列，则\lim_{n \to \infty} \sup x_n = +\infty
\end{gather}
$$

一个弱化一点的情况：

$$
\begin{align*}
    &对于有界数列，其收敛子列(由Weierstrass定理知必存在收敛子列)的极限值组成集合E=\{ \xi \mid \xi = \lim_{n \to \infty} x_{n_k} \} \\
    &那么\max E = \lim_{n \to \infty} \sup x_n \\
    &事实上，此时\max E= \sup E\\
    &除此之外，对任意数列，E中还包含\{x_n\}的发散子列的非正常极限(亦即\pm \infty) \\
    &此时 \lim_{n \to \infty} \sup x_n = \sup E
\end{align*}
$$

### 性质：
$$
\begin{align*}
&\forall 上极限存在的\{x_n\},\{y_n\}，成立下述关系：\\
&(1)\lim_{n \to \infty} \sup (x_n+y_n) \leq \lim_{n \to \infty} \sup x_n + \lim_{n \to \infty} \sup y_n \\
&(2)若\forall n \ge 1都存在x_n \le y_n,则\lim_{n \to \infty} \sup x_n \leq \lim_{n \to \infty} \sup y_n 且 \lim_{n \to \infty} \inf x_n \leq \lim_{n \to \infty} \inf y_n \\
&(3)\alpha>0时，\lim_{n \to \infty} \sup \alpha x_n = \alpha \lim_{n \to \infty} \sup x_n \\
&(4)\{x_n\}收敛或发散至\pm \infty 的充要条件是\lim_{n \to \infty} \sup x_n = \lim_{n \to \infty} \inf x_n \\
\end{align*}
$$

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

判别级数收敛的方法：  
1、定义法，判断${S_n}$是否收敛  
2、利用必要条件判断${x_n}$是否收敛于0  
3、柯西收敛准则
