#set text(font: "STZhongsong")
#import "@preview/fletcher:0.5.4" : *

= 人工智能逻辑 课后练习 2 2025/02/25

专业：人工智能（图灵班）

学号+姓名：3230105892 高玮轩

<学号姓名>

+ 设 𝑅 是集合 𝐴 上的一个等价关系。证明：𝑅 的传递闭包也是一个等价关系。
    + 自反性：由于 $R$ 具有自反性，所以对于任意 $a in A$，有 $a R a$，而对于 $R' supset.eq R$，也有 $a R' a$，则 $R'$ 具有自反性。
    + 对称性：假设 $x R' y$，由传递闭包的定义，存在 $n$ 个元素 $x_1, x_2, ..., x_n$，使得 $x R x_1 R x_2 R ... R x_n R y$，由于 $R$ 具有对称性，所以 $y R x_n R ... R x_2 R x_1 R x$，则 $y R' x$，则 $R'$ 具有对称性。
    + 传递性：显然，$R'$ 具有传递性。
    + 综上所述，$R'$ 是等价关系。

+ 已知一个有向图，其邻接矩阵为:
   #table(columns: 5, rows: 5)[][A][B][C][D][A][0][1][0][1][B][0][0][1][0][C][1][0][0][1][D][0][0][0][0]

#block[
#set enum(numbering: "(1)", start: 1)
+ 画出该图；
  + #diagram(
    let (A,B,C,D) = ((0,0),(3,0),(0,1),(3,1)),
    node(A, "A", stroke: 1pt),
    node(B, "B", stroke: 1pt),
    node(C, "C", stroke: 1pt),
    node(D, "D", stroke: 1pt),
    edge(A, B, "-|>", stroke: 1pt),
    edge(A, D, "-|>", stroke: 1pt),
    edge(B, C, "-|>", stroke: 1pt),
    edge(C, A, "-|>", stroke: 1pt),
    edge(C, D, "-|>", stroke: 1pt)
    )

+ 找出该图的所有强连通分量；
  + 强连通分量为 ${A, B, C}, {D}$

+ 画出该图的缩减图。
  + #diagram(
    let (A,B,C,D) = ((0,0),(3,0),(0,1),(3,1)),
    node(A, "A", stroke: 1pt),
    // node(B, "B", stroke: 1pt),
    node(C, "C", stroke: 1pt),
    node(D, "D", stroke: 1pt),
    // edge(A, B, "-|>", stroke: 1pt),
    edge(A, D, "-|>", stroke: 1pt),
    // edge(B, C, "-|>", stroke: 1pt),
    edge(A, C, "-|>", stroke: 1pt),
    edge(C, A, "-|>", stroke: 1pt),
    edge(C, D, "-|>", stroke: 1pt)
  )  
]

#block[
#set enum(numbering: "1.", start: 3)
+ 设 𝐺 = (𝑉, 𝐸) 是一个无向图。定义一个函数 𝑓:𝑉 → {0,1}，使得对于图中任意两个相邻的顶点𝑢和𝑣，𝑓(𝑢) ≠ 𝑓(𝑣)。如果这样的函数𝑓存在，证明该图是二分图；反之，如果图 𝐺 是二分图，证明这样的函数𝑓一定存在。
  - 若存在满足条件的 $f$，将顶点集 $V$ 分为两个集合 $V_1$ 和 $V_2$，使得对于任意 $u in V_1, v in V_2$，有 $f(u) = 0, f(v) = 1$，明显 $V_1 and V_2 = emptyset$，且对于相邻的顶点 $u, v$，有 $f(u) != f(v)$，即 $u in V_1, v in V_2$（或 $u in V_2, v in V_1$），所以 $G$ 是二分图。
  - 若 $G$ 是二分图，将顶点集分为两个（满足二分图性质，即 $forall (u, v) in G, u in V_1 且 v in V_2$（或相反））子集 $V_1$ 和 $V_2$，定义函数 $f$ 为：对于任意 $u in V$，若 $u in V_1$，则 $f(u) = 0$，否则 $f(u) = 1$，则对于任意相邻的顶点 $u, v$，有 $f(u) != f(v)$，所以 $f$ 满足条件。

+ 考虑一个自动驾驶汽车的情境：

  #block[
  #set enum(numbering: "(1)", start: 1)
  + 刹车失灵

  + 左侧小孩闯红灯

  + 右侧四位行人正常过斑马线
  ]
]

#quote(block: true)[
在这样的情景中，自动驾驶汽车为了做出伦理决策，需要用到哪些知识？如何表示这些知识并运用这些知识进行推理？
]

用到的知识：

+ 交通规则：红灯停，绿灯行，行人优先，等等
+ 伦理道德：尽量减少伤害，保护弱势群体

使用符号化表示这些知识：

- p: 交通规则
- q: 伦理道德
- r: 刹车失灵
- s: 左侧小孩闯红灯
- t: 右侧四位行人正常过斑马线
- M: 行驶向小孩的方向
- N: 行驶向行人的方向

可推理得到：$p, t arrow not N$, $not N arrow M$, $q, r, s arrow M$

推理得到应该行驶向小孩的方向。