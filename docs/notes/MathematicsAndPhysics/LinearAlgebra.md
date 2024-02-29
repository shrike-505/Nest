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