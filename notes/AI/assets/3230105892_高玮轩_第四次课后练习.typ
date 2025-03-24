#set text(font: "LXGW WenKai")

人工智能逻辑 课后练习4 2025/03/11

专业：人工智能（图灵班）

学号+姓名：3230105892 高玮轩

+ #strong[用消解来证明如下公式是不可满足的：]

  - (#emph[p] ↔¬#emph[p];) ∨ (#emph[q] ∧¬#emph[q];)  \
    $p <-> not p equiv not p and p$ \
    则原式 $equiv (not p and p) or (q and not q)$ \
    得到四个子句 ${not p or q, not p or not q, p or q, p or not q}$ \
    消解前两个子句得到 ${not p}$ \
    消解后两个子句得到 ${p}$ \
    消解得到 ${}$ \
    所以原式不可满足

  - (#emph[p] ↔ (#emph[q] → #emph[r];)) ∧ ((#emph[p] ↔ #emph[q];) ∧
    (#emph[p] ↔¬#emph[r];)) \
    分解等价式为多个蕴含式，转换为析取后得到子句：\
    ${¬p ∨ ¬q ∨ r}, {p ∨ q}, {p ∨ ¬r}, {¬p ∨ q}, {¬q ∨ p}, {¬p ∨ ¬r}, {p ∨ r}$\
    消解 ${p ∨ q}$ 和 ${¬p ∨ q}$ 得到 ${q}$

    消解 ${p ∨ ¬r}$ 和 ${¬p ∨ ¬r}$ 得到 ${¬r}$

    消解 ${p ∨ r}$ 和 ${¬r}$ 得到 ${p}$

    消解 ${q}$ 和 ${¬q ∨ p}$ 得到 ${p}$

    消解 ${p}$ 和 ${¬p ∨ ¬r}$ 得到 ${¬r}$

    最终消解 ${p}$ 和 ${¬p}$（来自其他步骤）得到空子句 \
    所以原式不可满足

  - ¬(((#emph[p] → #emph[q];) →¬#emph[q];) →¬#emph[q];)\
    // 展开后简化为${p}, {¬q}, {q}$所以原式不可满足

    $equiv not(((not p or q) -> not q) -> not q))$

    $equiv not((not(not p or q) or not q) -> not q)$

    $equiv not(p or not q)$

    $equiv not p and q$

    子句集合为 ${not p , q}$

    因此原式可以满足，p为假，q为真
    

+ #strong[判断下列子句集合的可满足性。对于可满足的，给出真假赋值；对于不可满足的，说明原因：]

  - {\[#emph[p,q];\]#emph[,];\[¬#emph[p,];¬#emph[q];\]#emph[,];\[¬#emph[p,q];\]}
    - p假q真即可满足

  - {\[¬#emph[p];\]#emph[,];\[#emph[p,];¬#emph[q];\]#emph[,];\[#emph[q];\]}
    - 消解得到空子句，不可满足

  - {\[#emph[p];\]#emph[,];\[ \]}、
    - 含有空子句，不可满足

  - {\[ \]}
    - 本身是空子句，不可满足

+ #strong[设] #emph[S] #strong[是子句集合，用] #emph[R];(#emph[S];)
  #strong[表示] #emph[S] #strong[的消解闭包，即：如果] #emph[c] ∈
  #emph[S];#strong[，则] #emph[c] ∈ #emph[R];(#emph[S];)#strong[；如果]
  #emph[c];#sub[1];#emph[,c];#sub[2] ∈ #emph[R];(#emph[S];)#strong[，且]
  #emph[c] #strong[是] #emph[c];#sub[1] #strong[和] #emph[c];#sub[2]
  #strong[的消解，则] #emph[c] ∈ #emph[R];(#emph[S];)#strong[。当]
  #emph[S] #strong[为如下的子句集合时，求出]
  #emph[R];(#emph[S];)#strong[：]

  - {\[#emph[p,];¬#emph[q];\]#emph[,];\[#emph[p,q];\]#emph[,];\[¬#emph[p];\]}
    - ${\[p,¬q\],\[p,q\],\[¬p\], [p], [q], [not q], []}$

  - {\[#emph[p];\]#emph[,];\[#emph[q];\]#emph[,];\[#emph[p,q];\]}
    - ${[p], [q], [p, q]}$
