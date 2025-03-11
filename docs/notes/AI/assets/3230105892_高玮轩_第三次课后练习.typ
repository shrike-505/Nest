#set text(font: "LXGW WenKai Mono")
人工智能逻辑 课后练习3 2025/03/04

专业：人工智能（图灵班）
 
学号+姓名：3230105892 高玮轩

+ #strong[将如下句子翻译为命题公式：]

  - 今天下雨或天晴，但不会两者都发生。
    - $p = $今天下雨，$q = $天晴
    - $p ∨ q ∧ ¬(p ∧ q)$

  - 如果有一个请求，那么该请求最终被接受，或者不会有任何进展。
    - $p = $有一个请求，$q = $该请求最终被接受，$r = $不会有任何进展
    - $p → q ∨ r$

  - 癌症不会被治愈，除非可以确定其原因，并且找到了抗癌新药。
    - $p = $癌症被治愈，$q = $可以确定其原因，$r = $找到了抗癌新药
    - $p → q ∧ r$

  - 只有当小明努力学习并且认真考试，他才能取得好成绩。
    - $p = $小明努力学习，$q = $认真考试，$r = $取得好成绩
    - $(p ∧ q) → r$

+ #strong[用真值表证明] ¬#emph[p] ∨ #emph[q] #strong[和] #emph[p] →
  #emph[q] #strong[是等值的。]
  - #table(columns: 4)[$p$][$q$][$¬p ∨ q$][$p → q$][0][0][1][1][0][1][1][1][1][0][0][0][1][1][1][1]

+ #strong[（证明定理 3.3）设] Φ #strong[是命题公式。那么，];Φ
  #strong[是可满足的，当且仅当] ¬Φ #strong[不是有效的；];Φ
  #strong[是有效的，当且仅当] ¬Φ #strong[不是可满足的。]
  - $Phi$ 是可满足的 $<=>$ $exists v, s.t. Phi^v = 1$ $<=>$ $not (forall v, Phi^v = 0)$ $<=>$ $not (forall v, (not Phi)^v = 1)$ $<=>$ $not models Phi$
  - $Phi$ 是有效的 $<=>$ $forall v, Phi^v = 1$ $<=>$ $not (exists v, s.t. (not Phi)^v = 1)$ $<=>$ $not$ ($not Phi$ 是可满足的) $<=>$ $not Phi$ 不是可满足的。
 

+ 给定 $phi.alt$ $equiv$ $psi$，且 $phi.alt$ 是 $phi$ 的一部分。把 $phi$ 中的 $phi.alt$ 换成 $psi$ 得到 $phi‘$。我们有 $phi$ $equiv$ $phi'$。
  - 由于 $phi.alt$ $equiv$ $psi$，即在任何赋值 $v$ 下，$phi.alt^v$ $equiv$ $psi^v$。因此在替换后，公式 $phi'$ 的结构仅在 $phi.alt$ 的部分进行了替换，而真值不受影响，因此 $phi$ $equiv$ $phi'$。

#block[
#set enum(numbering: "1.", start: 5)
+ #strong[证明：]

  - $#emph[p] → (#emph[q] ∧ #emph[r];) |=| (#emph[p] → #emph[q];) ∧ (#emph[p] → #emph[r];)$
    - #image("image.png",width: 90%)
    - 利用真值表即证。

  - $(#emph[p] ∧ #emph[q];) → #emph[r] |=| (#emph[p] → #emph[r];) ∨
    (#emph[q] → #emph[r];)$
    - #image("image-1.png",width: 90%)
    - 利用真值表即证。
]
