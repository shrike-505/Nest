---
comments: true
tags: 
    - 大一下
---

> 权当电子书得了，这是唯一一门大学以来我一点没学明白的课，令人感叹

# 线性代数Ⅱ

> 任课教师：吴志祥（虽然我一直听的是谈之奕老师23春夏的智云）
## 积空间与商空间
### 积空间

#### 定义

$$
V_1\times V_2\times ···\times V_n = \{(v_1,v_2,\dots,v_n)\mid v_i\in V_i, i = 1,2,\dots,n\}
$$

#### 性质
积空间的维数是各个空间的维数之和  

$$
\begin{gather}
dim(V_1\times V_2\times ···\times Vn) = dimV_1 +dimV_2 +···+dimV_n
\end{gather}
$$
### 商空间

#### 定义仿射子集
设$v\in V$，$U$是$V$的子空间，则$V$的仿射子集是$V$的形如$v+U$的子集，其中$v+U$定义为$v+U =\{v+u\mid u∈U\}$  

#### 定义
设$U$是$V$的子空间，则商空间$V/U$是指$V$的所有平行于$U$的仿射子集的集合,  
即$V/U =\{v+U\mid v\in V\}$  
#### 性质
设$U$是有限维线性空间$V$的子空间，则$dimV/U = dimV − dimU$  

## 对偶空间
线性泛函/线性函数：从$V$到$F$的线性映射  
$V$的全体线性泛函构成的集合记作$V^*$ = $\mathcal{L}
(V,F)$，这是一个线性空间，称为$V$的对偶空间。

- 注意：对于有限维线性空间$V_1$和$V_2$，若$dimV_1 = n$,$dimV_2 = m$，则$\mathcal{L}(V_1,V_2)$与$F^{m×n}$同构(维数为mn)。  
- 而$dimF(F) = 1$，因此$V^*$与$V$同构，$dimV^* = dimV$。

### 对偶基
设$v_1,\cdots,v_n$是$V$的一组基，则其对偶基是$V^*$中的元素组$\varphi_1,\cdots,\varphi_n$，其中$\varphi_i(v_j) = \delta_{ij}$，则每个$\varphi_i$都是$V$上的一个线性泛函，满足
$$
\varphi_j(v_k) = \begin{cases}
1, & k = j\\\\
0, & k \neq j
\end{cases}
$$

!!! note "F^n的对偶基"
    $F^n$的对偶基$\varphi_1,\cdots,\varphi_n$是把向量映为对应的第$i$个分量的线性泛函，即$\varphi_i(x_1,x_2,\cdots,x_n) = x_i$

要注意，对偶基是**线性映射**，其出发空间是标准基所张成的空间，到达空间是$F$。

???+ 证明对偶基是对偶空间的一组基
    设$a_1,\cdots,a_n \in F$使得$a_1\varphi_1 + \cdots + a_n\varphi_n = 0$，  
    则对$j = 1,2,\cdots,n$有$(a_1\varphi_1 + \cdots + a_n\varphi_n)(v_j) = a_1\varphi_1(v_1) + \cdots + a_j\varphi_j(v_j)(只有这一项不为0) + a_n\varphi_n(v_n) = a_j = 0$，  
    因此$\varphi_1,\cdots,\varphi_n$线性无关，是$V^*$的一组基。

### 对偶映射
设$V_1$和$V_2$是线性空间，$f:V_1\to V_2$是线性映射，则$f^*:V_2^*\to V_1^*$是$f$的对偶映射，定义为$f^*(\varphi) = \varphi\circ f \in V_1^*$。

#### 零化子
对于$V$的子空间$U$，定义$U^0 = \{\varphi\in V^*\mid \varphi(u) = 0, \forall u\in U\}$，称为$U$的零化子。(把$U$中的元素映为0的线性泛函的集合)

???+ 例
    - 用$e_1,e_2, e_3, e_4, e_5$表示$R^5$的标准基，$V = R^5$，$U = span\{e_1,e_2\} = \{(x_1,x_2,0,0,0)\mid x_1,x_2\in R\}$，用$\varphi_1,\varphi_2,\varphi_3,\varphi_4,\varphi_5$表示$(R^5)^*$的对偶基，证明$U^0 = span\{\varphi_3,\varphi_4,\varphi_5\}$。
        - 证明：
        - $\varphi_j(x_1,x_2,x_3,x_4,x_5) = x_j$
        - 设$\varphi\in span\{\varphi_3,\varphi_4,\varphi_5\}$，则$\varphi(x_1,x_2,0,0,0) = (c_3\varphi_3 + c_4\varphi_4 + c_5\varphi_5)(x_1,x_2,0,0,0) = 0$
        - 因此$\varphi\in U^0$, $span\{\varphi_3,\varphi_4,\varphi_5\} \subset U^0$
        - 设$\varphi\in U^0$，由基的性质, $\exists c_1,c_2,c_3,c_4,c_5 \in R, \varphi = c_1\varphi_1 + c_2\varphi_2 + c_3\varphi_3 + c_4\varphi_4 + c_5\varphi_5$
        - 由于$\varphi$是零化子, 于是$\varphi(e_1) = \varphi(e_2) = 0$
        - 又$\varphi(e_1) = (c_1\varphi_1 + c_2\varphi_2 + c_3\varphi_3 + c_4\varphi_4 + c_5\varphi_5)(1,0,0,0,0) = c_1$
        - 因此$c_1 = 0$
        - 同理$c_2 = 0$
        - 所以$\varphi = c_3\varphi_3 + c_4\varphi_4 + c_5\varphi_5$, 即$\varphi\in span\{\varphi_3,\varphi_4,\varphi_5\}$
        - 于是$U^0 \subset span\{\varphi_3,\varphi_4,\varphi_5\}$
        - 综上$U^0 = span\{\varphi_3,\varphi_4,\varphi_5\}$

零化子$U^0$是$V^*$的子空间，且$dimU^0 = dimV − dimU$。
一些性质($T \in \mathcal{L}(V,W)$)：

- $\ker T^* = (\text{Im} T)^0$ 
- $\text{Im} T^* = (\ker T)^0$
- $\dim \ker T^* = \dim \ker T + \dim W - \dim V$
- $\dim \text{Im} T^* = \dim \text{Im} T$
- $T$是满的当且仅当$T^*$是单的
- $T$是单的当且仅当$T^*$是满的

$T$是单射当且仅当$\ker T = \{0\}$（$\dim \ker T = 0$）(常用于证明单射)    
$T$是满射：$\text{Im} T = W$
$\lambda$是$T$的特征值 $\Leftrightarrow$ $T - \lambda I$不是单射，也不是满射  
有限维向量空间上的算子$T$可逆 $\Leftrightarrow$ $T$是单射 $\Leftrightarrow$ $T$是满射

## 不变子空间 
若$U$是$V$的子空间，若存在线性映射$T$，$\forall \xi \in U$, 有$T( \xi ) \in U$, 则U为V的不变子空间.  
可知，若V可被直和分解为$V = V_1 \oplus V_2 \oplus \cdots \oplus V_n$ 且$V_i$均为$V$的不变子空间，那么$\forall v \in V$, 都有$Tv = Tv_1 + Tv_2 + \cdots + Tv_n , v_i \in V_i$  
那么$T$对应的矩阵为准对角矩阵，当每个子空间的维数为1时，矩阵为对角阵。  

定理：$V$有不变子空间，当且仅当$T$有特征值。  

定义特征空间$E(\lambda, T) = null (T - \lambda I)$  
于是$T$有$m$个不同的特征值$\lambda_1, \lambda_2, \cdots, \lambda_m$。假设$dim V = n$, 则$m \leq n$, 任意两个$E(\lambda_i, T)$和$E(\lambda_j, T)$交集为空。

- $m = n$时，$T$对应的矩阵为对角阵，$V$可被直和分解为$E(\lambda_1, T) \oplus E(\lambda_2, T) \oplus \cdots \oplus E(\lambda_m, T)$

??? 算子不变性与上三角矩阵
    - 设$T \in \mathcal{L}(V)$，$v_1, v_2, \cdots, v_n$是$V$的一组基，则下列条件等价：
        - T关于这组基的矩阵是上三角矩阵
        - $\forall j = 1, 2, \cdots, n$，$span\{v_1, v_2, \cdots, v_j\}$是$T$的不变子空间
        - $\forall j = 1, 2, \cdots, n$，$T_{v_j} \in span\{v_1, v_2, \cdots, v_j\}$

### 上三角矩阵
$T$是可逆的当且仅当某组基下$T$的上三角矩阵的对角元全不为0。  
有限维复线性空间$V$上的线性映射$T \in \mathcal{L}(V)$必能在$V$的一组基下表示为上三角矩阵。  
对这组基运用格拉姆-施密特正交化方法后得到的规范正交基下，$T$的矩阵也为上三角矩阵。

## 内积空间
内积的四个性质：

- 正定性：$\forall v \in V, <v, v> \geq 0$，且$<v, v> = 0 \Leftrightarrow v = 0$
- 第一个位置的加性：$\forall u, v, w \in V, <u + v, w> = <u, w> + <v, w>$
- 第一个位置的齐性：$\forall u, v \in V, \forall \lambda \in F, <\lambda u, v> = \lambda <u, v>$
- 共轭对称性：$\forall u, v \in V, <u, v> = \overline{<v, u>}$

正交分解：设$u$,$v \in V$且$v \neq 0$，令$c = \frac{<u,v>}{<v,v>}$，$w = u - cv$，则$w$与$v$正交。  

对规范正交基$e_1, e_2, \cdots, e_n$，$a_i \in F$有$||a_1 e_1 + a_2 e_2 + \cdots + a_n e_n||^2 = |a_1|^2 + |a_2|^2 + \cdots + |a_n|^2$  

??? 用规范正交基表示其张成空间中的向量
    $v = \sum_{i=1}^{n} <v, e_i>e_i$且$||v||^2 = \sum_{i=1}^{n} |<v, e_i>|^2$

范数: $||v|| = \sqrt{<v, v>}$
### Gram-Schmidt正交化
设$V$是内积空间，$v_1, v_2, \cdots, v_n$是$V$的一组基，$w_1 = v_1, w_2, w_3, \cdots, w_n$是由$v_1, v_2, \cdots, v_n$通过Gram-Schmidt正交化得到的向量组，满足：  
$w_1 = v_1$  
$w_2 = v_2 - \frac{<v_2, w_1>}{<w_1, w_1>}w_1$  
$w_3 = v_3 - \frac{<v_3, w_1>}{<w_1, w_1>}w_1 - \frac{<v_3, w_2>}{<w_2, w_2>}w_2$  
$\cdots$  
$w_n = v_n - \frac{<v_n, w_1>}{<w_1, w_1>}w_1 - \frac{<v_n, w_2>}{<w_2, w_2>}w_2 - \cdots - \frac{<v_n, w_{n-1}>}{<w_{n-1}, w_{n-1}>}w_{n-1}$  

### 正交补
有限维内积空间$V$满足$V = U \oplus U^{\perp}$  
正交投影：设$U$是$V$的子空间，$v \in V$，$u \in U$，$w \in U^{\perp}$，有如下表示：$v = u + w$，定义$P_U(v) = u$为$V$上的正交投影。

## 内积空间上的算子
### 伴随算子
设$V$是内积空间，$T \in \mathcal{L}(V, W)$, T的伴随算子由下面这个条件唯一确认：$\forall v \in V , w \in W, <Tv, w> = <v, T^*w>$

??? 例
    定义$T: R^3 \to R^2$为$T(x_1, x_2, x_3) = (x_2 + 3x_3, 2x_1)$，求$T^*$  
    解：$T^*$是从$R^2$到$R^3$的线性映射，取定$w = (y_1, y_2)$，则有$<(x_1 ,x_2, x_3), T^*(y_1, y_2)> = <T(x_1, x_2, x_3), (y_1, y_2)>$  
    $RHS = <(x_2 + 3x_3, 2x_1), (y_1, y_2)> = x_2y_1 + 3x_3y_1 + 2x_1y_2$  
    $= <(x_1, x_2, x_3), (2y_2, y_1, 3y_1)>$(化为与LHS一样的形式)  
    于是$T^*(y_1, y_2) = (2y_2, y_1, 3y_1)$

伴随的一些性质：

- $(T^*)^* = T$
- $(ST)^* = T^* S^*$
- $(T + S)^* = T^* + S^*$
- $(\lambda T)^* = \overline{\lambda} T^*$
- $\text{null} T^* = (\text{range} T)^{\perp}$
- $\text{range} T^* = (\text{null} T)^{\perp}$
- $\text{null} T = (\text{range} T^*)^{\perp}$
- $\text{range} T = (\text{null} T^*)^{\perp}$
- $\lambda$是$T$的特征值 $\Leftrightarrow$ $\overline{\lambda}$是$T^*$的特征值
- $U$是$V$在$T$下的不变子空间 $\Leftrightarrow$ $U^{\perp}$是$V$在$T^*$下的不变子空间

#### 伴随算子的矩阵
若$T \in \mathcal{L}(V, W)$，$V$和$W$是有限维内积空间，$V$和$W$的规范正交基分别为$e_1, e_2, \cdots, e_n$和$f_1, f_2, \cdots, f_m$  
且$(T(e_1), T(e_2), \cdots, T(e_n)) = (f_1, f_2, \cdots, f_m)A$，$(T^*(f_1), T^*(f_2), \cdots, T^*(f_m)) = (e_1, e_2, \cdots, e_n)B$  
则$B = \overline{A^T}$    
换句话说，在各自出发空间的标准正交基下，算子与其伴随算子互为共轭转置（可根据这个求伴随算子）。

### 自伴随算子
若$T \in \mathcal{L}(V)$，且$T^* = T$，则$T$是自伴随算子。即$\forall v, w \in V, <Tv, w> = <v, Tw>$  
于是$A = \overline{A^T}$

- 自伴随算子有本征值，且是实数
- 复内积空间上，若$\forall v \in V, <Tv, v> = 0$，则$T = 0$
- 复内积空间上，T是自伴随算子当且仅当$\forall v \in V, <Tv, v> \in R$
- 若T是自伴算子，则$\forall v \in V, <Tv, v> = 0 \Leftrightarrow T = 0$
- $U$是$V$在$T$下的不变子空间 $\Leftrightarrow$ $U^{\perp}$也是$V$在$T$下的不变子空间

一个特殊的自伴算子：$\forall T \in \mathcal{L}(V)$，$T T^* - T^* T$是自伴的对其取伴随后运用上面的性质即证。
### 正规算子
若$T \in \mathcal{L}(V)$，且$T^*T = TT^*$，则$T$是正规算子。

- T是正规的当且仅当$\forall v, ||Tv|| = ||T^*v||$
- 在伴随算子与原算子本征值共轭的基础上，正规算子与其伴随算子对应这对本征值有相同的本征向量
- 若T是正规算子，则T对应不同本征值的本征向量正交
- $T$对应矩阵$A$满足$A \overline{A^T} = \overline{A^T} A$
- 若$T$正规，则$T - \lambda I$也正规
- $\text{null} T = \text{null} T^* = (\text{range} T)^{\perp}$，把null和range互换位置也成立

#### 正规/伴随算子的性质
- 复谱定理
    - $F = C, T \in \mathcal{L}(V)$是**正规**算子$\Leftrightarrow$存在V的规范正交基$e_1, e_2, \cdots, e_n$，使得$T$在这组基下的矩阵是对角矩阵$\Leftrightarrow$V有一个由T的本征向量组成的规范正交基
- 实谱定理
    - $F = R, T \in \mathcal{L}(V)$是**自伴**算子$\Leftrightarrow$存在V的规范正交基$e_1, e_2, \cdots, e_n$，使得$T$在这组基下的矩阵是对角矩阵$\Leftrightarrow$V有一个由T的本征向量组成的规范正交基

### 正算子
若$T \in \mathcal{L}(V)$，$V$为复向量空间，且$\forall v \in V, <Tv, v> \geq 0$，则$T$是正算子。若$V$为实向量空间，则需要添加条件：$T$是自伴随算子。下列条件等价：

- $T$是正算子
- $T$是正规算子且所有本征值都是非负实数
- $T$有正的/自伴的平方根
- 存在算子$R$，使得$T = R^* R$

### 等距同构
$||Tv|| = ||v||$，则$T$是等距同构。下列条件等价：

- $T$是等距同构
- $\forall u, v \in V, <Tu, Tv> = <u, v>$
- 对$V$中的任意规范正交向量组$e_1, e_2, \cdots, e_n$，$T$将其映为规范正交向量组$Te_1, Te_2, \cdots, Te_n$
- $T^* T = T T^* = I$ (由此可以看出，等距同构算子是正规算子)
- $T^*$是等距同构
- $T$可逆且$T^{-1} = T^*$

特别的，当$F = C$时，$T$等距同构当且仅当$V$有一个由$T$的本征向量组成的规范正交基，且本征值的绝对值为1。（可看出此时$T$自伴）

#### 极分解
对于算子$T \in \mathcal{L}(V)$, $<T^* Tv, v> = <Tv, Tv> \geq 0$, 于是$T^* T$是正算子，可定义$T^* T$的平方根$\sqrt{T^* T}$（自伴正算子），则存在一个等距同构$S \in \mathcal{L}(V)$，$s.t. T = S \sqrt{T^* T}$

#### 奇异值分解
$T$的奇异值是$\sqrt{T^* T}$的特征值，且每个特征值都要重复$dim E(\lambda, \sqrt{T^* T})$次。