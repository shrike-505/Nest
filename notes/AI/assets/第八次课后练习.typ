#set text(font: "LXGW WenKai")

人工智能逻辑 课后练习 8 2025/04/08

专业：人工智能

学号 + 姓名

#strong[\1. 给定知识库] K = (T #emph[,];A)#strong[，其中] T
#strong[是如下 TBox：]

$(#emph[Ax];1) #emph[A] ⊑ #emph[B]$

$(#emph[Ax];3) #emph[C] ⊑∃#emph[R.D]$

$(#emph[Ax];4) #emph[D] ⊑¬#emph[A]$

$(#emph[Ax];5) #emph[A] ⊑∀#emph[R.A]$


A 是如下 ABox：

${#emph[a] : #emph[A,c] : #emph[D,];(#emph[a,b];) : #emph[R,];(#emph[b,c];): #emph[R];}$

+ 使用表方法来计算知识库K是否可满足。如果是，给出K的一个模型。

  - (Ax1) 导致 a:B（因 a:A）。

  - (Ax2) 导致 a:C（因 a:B）。

  - (Ax3) 要求 a:C 必须存在 R 关系指向 D。现有 a R b，若假设 b:D，则根据 (Ax4) 导致 b:¬A。但 (Ax5) 要求 a:A 的 R 后继 b 必须为 A，矛盾（b 同时为 A 和 ¬A）。

  - 若尝试通过新增节点 d 满足 ∃R.D，则 d:D 且 d:A（因 Ax5），但 d:D 导致 d:¬A（Ax4），同样矛盾。

  - 结论：无法避免冲突，K 不可满足，无模型。

+ 现在考虑知识库 K′，它由删除 K 中的公理 (Ax1) 得到。请用表方法判断概念断言 $#emph[c] : (¬#emph[A] ⊔¬#emph[D];)$ 是否被K′ 蕴涵。

  - K′ 删除 Ax1，其余公理保留。检查 K′ 是否蕴涵 c : ¬A ⊔ ¬D：

  - ABox 约束：c:D。

  - TBox 公理：D ⊑ ¬A（Ax4）直接导致 c:¬A。

  - 逻辑推导：c:D → c:¬A，因此 c 必然满足 ¬A ⊔ ¬D。

  - 冲突验证：若假设存在模型使 c:A 且 c:D，则违反 Ax4，矛盾。

  - 即使 K′ 因 Ax5 导致全局不可满足（a:A 迫使 c:A 与 c:D 冲突），但根据逻辑定义，不可满足知识库蕴涵所有断言。
  - 因此 K′ 蕴涵 c : ¬A ⊔ ¬D。