#set text(font: "STZhongsong")

= AI 逻辑易错题

来自最后一节助教复习课

== 自然语言翻译为命题语言

- 癌症不会被治愈，除非可以确定其原因，并且找到了抗癌新药
  - p: 确定癌症原因
  - q: 找到抗癌新药
  - r: 癌症被治愈
  - $not (p and q) -> r$
- 只有当小明努力学习并且认真考试，他才能取得好成绩
  - 只有 p，才 q 转化为 $q -> p$
  - p: 小明取得好成绩
  - q: 小明努力学习
  - r: 小明认真考试
  - TBD

== 命题逻辑中的消解证明

- 用消解原理证明 $(A -> B), (B->C) models (A->C)$
  - TBD
- 用消解原理证明 $models (exists x forall y P(x,y)) -> (forall y exists x P(x,y))$
  - 1) 斯克伦化 2) 代入
  - 即证 $not (exists x forall y P(x,y)) -> (forall y exists x P(x,y)) models perp$
  - 子句化：
    - TBD


== 缺省逻辑

- #strong[给定缺省理论] $#emph[T] = (#emph[D,W];)$#strong[, 其中] $#emph[D]
  \= { }#strong[,] #emph[W] =
  {#emph[d];#sub[1];#emph[,d];#sub[2];#emph[,d];#sub[3];#emph[,d];#sub[4];#emph[,d];#sub[5];}$

  $d_1 = frac(top : p,r), d_2 = frac(r : not q, not s), d_3 = frac(top : s, q), d_4 = frac(q : t, not p), d_5 = frac(not s : t, not q)$


  用外延的不动点定义求出的所有外延

#let Th = text("Th")
#let TBD = text("TBD")

  - 1) 求外延的不动点
    - 首先*观察*(?)得到两个外延 $E = Th({r, not s, not q}), E' = Th({q, not p})$
    - 然后逐个验证，以 E 为例
      + $E_0 = W = {}$
      + $E_1 = Th(E_0) or TBD$

== 论辩框架

- 分别求出如下论辩框架的不动点
  - 1) 论辩框架的特征函数：从论证集合到论证集合的映射 $F_{A F}(E) = {a | E "可防御" a}$
  - 2) 函数的不动点
  - TBD

- #strong[用结构化论辩框架表示如下缺省理论（本书第六章内容）表示的知识，并写出该结构化论辩框架产生的抽象论辩框架。]

  #figure[$D = {frac(text("quaker")(x):text("pacifist")(x),text("pacifist")(x)), frac(text("republican")(x):not text("pacifist")(x), not text("pacifist")(x))}$]

  #figure[$W = {text("quaker(Nixon)"), text("republican(Nixon)")}$]

  令 $s_1 = frac(text("quaker")(x):text("pacifist")(x),text("pacifist")(x)), s_2 = frac(text("republican")(x):not text("pacifist")(x), not text("pacifist")(x))}$

  #let Nixon = text("Nixon")
  #let pacifist = text("pacifist")
  #let quaker = text("quaker")
  #let republican = text("republican")

  则 $s_1$ 通过基代换可得到 $quaker(Nixon) => pacifist(Nixon)$, $s_2$ 通过基代换可得到 $republican(Nixon) => not pacifist(Nixon)$，这里 $=>$ 代表“可缺省地推出”

  TBD

