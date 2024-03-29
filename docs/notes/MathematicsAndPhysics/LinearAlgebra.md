---
comments: true
---

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

$T$是单射当且仅当$\ker T = \{0\}$(常用于证明单射)  
$\lambda$是$T$的特征值 $\Leftrightarrow$ $T - \lambda I$不是单射，也不是满射

## 不变子空间 
若$U$是$V$的子空间，若存在线性映射$T$，$\forall \xi \in U$, 有$T( \xi ) \in U$, 则U为V的不变子空间.  
可知，若V可被直和分解为$V = V_1 \oplus V_2 \oplus \cdots \oplus V_n$ 且$V_i$均为$V$的不变子空间，那么$\forall v \in V$, 都有$Tv = Tv_1 + Tv_2 + \cdots + Tv_n , v_i \in V_i$  
那么$T$对应的矩阵为准对角矩阵，当每个子空间的维数为1时，矩阵为对角阵。  

定理：$V$有不变子空间，当且仅当$T$有特征值。  

定义特征空间$E(\lambda, T) = null (T - \lambda I)$  
于是$T$有$m$个不同的特征值$\lambda_1, \lambda_2, \cdots, \lambda_m$。假设$dim V = n$, 则$m \leq n$, 任意两个$E(\lambda_i, T)$和$E(\lambda_j, T)$交集为空。

- $m = n$时，$T$对应的矩阵为对角阵，$V$可被直和分解为$E(\lambda_1, T) \oplus E(\lambda_2, T) \oplus \cdots \oplus E(\lambda_m, T)$