---
    comments: true
    tags:
        - 大二上笔记
 
---

# 高级数据结构与算法分析

> 任课教师：杨洋

!!! note "Reference"
    OI wiki: https://oi-wiki.org/ds/  
    https://note.shad0wash.cc/cs/ads/

## AVL树
是二叉搜索树的一种：

- 平衡因子（BF: Balance Factor）：某节点左子树的高度减去右子树的高度
- AVL树：任意节点的平衡因子只能是-1、0、1
- 不满足条件时，通过旋转操作进行调整，形成AVL树
    - 旋转：将某个节点“提起来”，另一侧节点与其的父子关系便颠倒，同时节点本身的某个子节点也易父
        - RR, LL, RL, LR
        - LL,RR一般是对失衡节点的子节点转上去
        - RL,LR一般是对失衡节点的孙子节点转上去（转两次）
        - 具体可见[这里的](https://www.hello-algo.com/chapter_tree/avl_tree/#752-avl)图像展示

<!-- 

???+ note "例题" 
    Insert 2, 1, 4, 5, 9, 3, 6, 7 into an initially empty AVL tree.  Which one of the following statements is FALSE?


    A. 4 is the root


    B. 3 and 7 are siblings


    C. 2 and 6 are siblings


    D. 9 is the parent of 7
    
    ??? key-point "Answer"
        插入建树就行，记得每次插入后如果有失衡就立刻旋转，选B。
 -->

## Splay树
是二叉搜索树的一种：

- 每访问一个节点，将其旋转到根节点，会使树的高度降低。
- 一般从根节点开始旋转，直到目标节点成为根节点。
- zig: 访问节点的父节点是根节点时，只需一次旋转（把访问节点转上去）
- zig-zig: 访问节点的父节点不是根，且访问节点、父节点、祖父节点在同一侧时，需要两次旋转（沿祖父节点-父节点旋转，再沿父节点-访问节点旋转）
- zig-zag: 访问节点的父节点不是根，且访问节点、父节点、祖父节点不在同一条链上时，需要两次旋转（沿父节点-访问节点旋转，再沿祖父节点-访问节点旋转）（这是因为第一次旋转后访问节点便与原祖父节点有了一条关系边）

???+ note "有关旋转的一道作业题"
    https://ms.ntub.edu.tw/~spade/teaching/x-DS2005/DS-04-23.pdf

## 摊还分析

对一个空的数据结构连续进行$m$次操作，Worst_cost为$\max_{1\leq i\leq m} c_i$，Average_cost为$\frac{\sum_{i=1}^m c_i}{m}$，前者太大，后者难以计算。

引入Amortized_cost $\hat{c_i} = c_i + \Delta_i$，$\Delta_i$可正可负。且有$\sum_{i=1}^m \hat{c_i} \geq \sum_{i=1}^m c_i$，即$\hat{c_i}$是对$c_i$的一种“平摊”。

worst-case time $\geq$ **amortized time** $\geq$ average time

以对某Stack的操作为例：有`pop`、`push`、`multi_pop`的操作，其中`multi_pop`连续`pop`栈上`min(k, size)`个元素。

`pop`和`push`一次cost为1，`multi_pop`一次cost为k。


### 聚合法

进行连续`n`次操作（如上述三种操作），最坏的操作序列的总cost为`Tn`，则摊还时间为`Tn/n`。

此处有陷阱：可能会以为，（对`multi_pop`而言）最坏的操作就是连着进行`n`次`multi_pop`，每次pop出`n`个元素，于是得到$O(n^2)$的错误答案，但实际上这种情况根本不会发生，栈里不可能一直有`n`个元素。

因此最坏情况实则是`n-1`次`push`和一次`multi_pop`，cost为`2n-2`，摊还时间为$\frac{2n-2}{n}=\frac{O(n)}{n}=O(1)$。

### 核算法

### 势能法
令$\hat{c_i} - c_i = Credit_i = \Phi(D_i) - \Phi(D_{i-1})$

其中$\Phi(D_i)$为第`i`次操作后该结构的“势能”（是该结构的某个特性的函数，如一棵树的节点个数或高度，一个栈的元素个数等），规定$\Phi(D_0)=0$。