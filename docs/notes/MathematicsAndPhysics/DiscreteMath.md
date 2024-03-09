---
comments: true
---

# 离散数学

> 任课教师：郑文庭

!!! abstract "Overview"
	- 数学推理
		- 数理逻辑与证明
		- 归纳法
	- 数论基础
	- 组合分析
		- 计数方法
	- 离散结构
		- 基本结构
		- 关系
		- 图
		- 树
	- 算法思维
		- 算法
		- 递归  

## 逻辑
逻辑运算符优先级  
![](../../img/dmop.png)  
taulogy: 恒真，如`p∨¬p`  
contradiction: 恒假，如`p∧¬p`  
contingency: “可能发生的”，既非taulogy又非contradiction，如`p`   
dual（对偶）: 将逻辑表达式中的`∧`和`∨`互换，`T`和`F`互换，`¬`不变  

- s与t等价，当且仅当s的dual与t的dual等价    

### De Morgan's Law:  
- `¬(p∧q)` = `¬p∨¬q`
- `¬(p∨q)` = `¬p∧¬q`

### Other laws:  
- 交换律：`p∧q` = `q∧p`，`p∨q` = `q∨p`  
- 结合律：`p∧(q∧r)` = `(p∧q)∧r`，`p∨(q∨r)` = `(p∨q)∨r`  
- 分配律：`p∧(q∨r)` = `(p∧q)∨(p∧r)`，`p∨(q∧r)` = `(p∨q)∧(p∨r)`  
- 吸收律：`p∧(p∨q)` = `p`，`p∨(p∧q)` = `p`  

### 逻辑恒等式：
$p \leftrightarrow q \equiv (p \rightarrow q) \wedge (q \rightarrow p) \equiv (p \wedge q) \vee (\neg p \wedge \neg q)$  
![](../../img/dmlog1.png)

??? 例  
	对数独方框进行坐标划分

  	- 共9列9行，每个格子可填1-9的数字  
  	- 以$p(i,j,n)$表示第i行第j列的格子中填入数字n  
  	- 假设在第3行第4列的格子中填入数字5，则$p(3,4,5)$为真，$\forall 1 \le j \le 3 以及5\le j\le 9，p(3,j,5)$为假  
  	- 于是检索每行：$\bigwedge_{i=1}^9 \bigwedge_{n=1}^9 \bigvee_{j=1}^9 p(i,j,n)$  
  	- 检索每列：$\bigwedge_{j=1}^9 \bigwedge_{n=1}^9 \bigvee_{i=1}^9 p(i,j,n)$

p NOR($\downarrow$) q: is true when both are false, otherwise false.（对$\vee$取反）  
p NAND($\mid$) q: is true when either or both are false（有假为假，其余情况为真）（对$\wedge$取反）  
亦即$p\downarrow q \equiv \neg(p\vee q)$，$p\mid q \equiv \neg(p\wedge q)$  

### 范式
- 合取范式(Conjunctive Form)：将一个命题公式写成若干个(有限项)合取式的析取式，如$(p∧q)∨(¬p∧q)∨(p∧¬q)∨(¬p∧¬q)$  
- 析取范式(Disjunctive Form)：将一个命题公式写成若干个(有限项)析取式的合取式，如$(p∨q)∧(¬p∨q)∧(p∨¬q)∧(¬p∨¬q)$
- 最小项(minterm):所有逻辑变量在各个表达式中出现且只出现一次，再合取
	- Each minterm is true for exactly **one** assignment.
	- 性质: 
    	- $m_1∨m_2∨···∨m_n = True$
    	- $\forall i,j, m_i \wedge m_j = False$

## Propositional Functions
- The statement $P(x)$ is the value of the** Propositional Function** $P$ at $x$.
    - e.g. P(x)表示$x>0$, 则$P(1)$为$T$，$P(-1)$为$F$, $P(10) \rightarrow P(-1)$为$T$

### Quantifiers
$\forall x P(x)$: for all x in the domain, P(x) is true.  
$\exists x P(x)$: there exists an x in the domain such that P(x) is true.  

- If $P(x)$ denotes the statement $x>0$ and the domain $U$ is all integers, then $\forall x P(x)$ is false, but $\exists x P(x)$ is true.
-  Given the domain as $\{x_1, x_2, x_3, \cdots, x_n\}$
    -  $\forall x P(x) = P(x_1) \wedge P(x_2) \wedge P(x_3) \wedge \cdots \wedge P(x_n)$
    -  $\exists x P(x) = P(x_1) \vee P(x_2) \vee P(x_3) \vee \cdots \vee P(x_n)$

两个量词的优先级高过其他逻辑运算符，如$\forall x P(x) \rightarrow Q(x)$表示$\forall x (P(x) \rightarrow Q(x))$  

$\neg \forall x P(x) \equiv \exists x \neg P(x)$  
$\neg \exists x P(x) \equiv \forall x \neg P(x)$