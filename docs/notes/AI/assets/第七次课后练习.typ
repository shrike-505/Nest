#set text(font: "LXGW WenKai")
人工智能逻辑 课后练习 7 2025/04/01

专业：人工智能

学号 + 姓名

1. 给定如下 TBox T:

    $#emph[A] ⊑ B$\
    $B ⊑ #emph[C]$\
    $C ⊑∃R.D$\
    $D ⊑¬A$\
#block[
#set enum(numbering: "(1)", start: 1)
+ T 是否可满足？如果是，给出T 的一个模型。
  - 可满足
  - 域：${a,d}$
  - 解释函数
    - $A^I = B^I = C^I = {a}$
    - $D^I = {d}$
    - $R^I = \{(a,d)\}$

+ 概念 #emph[D] 是否关于T 可满足？如果是，给出T 的一个模型，使得
  #emph[D] 的解释为非空。
    - 可满足，就用第一问的模型，域为${a,d}$，其中 $D^I = {d}$ 非空，该模型满足 T 的所有公理且 D 的解释非空。

+ 概念表达式 $#emph[A]⊓#emph[D]$ 是否关于T 可满足？如果是，给出T
  的一个模型，使得 $#emph[A]⊓#emph[D]$ 的解释为非空。
    - 不可满足，根据公理 $D ⊑¬A$，所有 $D$ 的实例都不属于 $A$，因此 $A^I and D^I = emptyset$，故 $#emph[A]⊓#emph[D]$ 的解释为空。
]
