#set text(font: "LXGW WenKai")
人工智能逻辑 课后练习 10 2025/04/22

专业：人工智能

学号 + 姓名：3230105892 高玮轩

1. 把如下自然语言语句翻译为一阶缺省理论，并检查结论是否可以被轻信地或怀疑地得出：

  + 通常，计算机学生喜欢计算机。喜欢计算机的女生通常对认知科学感兴趣。计算机学生通常是女生，比如
    Anne，但是 Bob 是这条规则的例外。结论：Anne 对认知科学感兴趣；Bob
    对认知科学不感兴趣。

    - 默认规则:
      - D₁: `computer_student(X) : likes_computer(X) / likes_computer(X)`
      - D₂: `likes_computer(X) ∧ female(X) : interested_cog_sci(X) / interested_cog_sci(X)`
      - D₃: `computer_student(X) : female(X) / female(X)`
    - 事实:
      - W = {computer_student(anne), computer_student(bob), ¬female(bob)}
   
   结论检查:
    - 对于缺省理论𝑇=⟨𝑊,𝐷⟩,T有唯一外延：E={computer_student(Anne),computer_student(Bob), ¬female(Bob), female(Anne),¬female(Anne)(Bob),likes_computer(Anne),likes_computer(Bob),interested_cog_sci(Anne)}
    - 结论1：interested_cog_sci(Anne)既可以被怀疑地得出，也可以被轻信地得出
    - 结论2：¬interested_cog_sci(Bob)不在外延中，无法被怀疑地或轻信地得出

  + 缺省地，学生都不懒惰。但是，计算机学生通常聪明，而聪明的学生通常懒惰。Jim
    和 Mary 学习人文，Anne 和 Bob 学习计算机。结论：Anne 和 Bob
    是懒惰的；Mary 和 Jim 不懒惰。

      - 默认规则:
        - D₁: `student(X) : ¬lazy(X) / ¬lazy(X)`
        - D₂: `computer_student(X) : smart(X) / smart(X)`
        - D₃: `smart(X) : lazy(X) / lazy(X)`
      - 事实:
        - W = {studies(jim, humanities), studies(mary, humanities), studies(anne, cs), studies(bob, cs)}
   
   结论检查:
    - 对于缺省理论𝑇=⟨𝑊,𝐷⟩,T有唯一外延：E=W∪{smart(Anne),smart(Bob),¬lazy(Jim),¬lazy(Mary),¬lazy(Anne),¬lazy(Bob)}
    - 结论1：lazy(Anne)∧lazy(Bob)不成立，无法被怀疑地或轻信地得出
    - 结论2：¬lazy(Jim)∧¬lazy(Mary)既可以被怀疑地得出，也可以被轻信地得出

2. 证明或否证如下命题：
  #block[
  #set enum(numbering: "(a)", start: 1)
  + 设 ⟨#emph[W,D];⟩ 是一个命题缺省理论，#emph[D];′
    是一组规范缺省规则集合，#emph[D] ⊆ #emph[D];′。如果 #emph[E] 是
    ⟨#emph[W,D];⟩ 的一个外延，那么存在 ⟨#emph[W,D];′⟩ 的外延 #emph[E];′
    使得 #emph[E] ⊆ #emph[E];′。
    - 否证
      - 反例: 设 ⟨W, D⟩ = ⟨∅, { :a/a}⟩，E = Th({a})。取 D′ = { :a/a, :¬a/¬a}，则 ⟨W, D′⟩ 无外延包含 E。

  + 设 ⟨#emph[W,D];⟩ 是一个命题缺省理论，#emph[ϕ] 是一个可以从
    ⟨#emph[W,D];⟩ 中怀疑地得出的公式。那么，对于每个可以从 ⟨#emph[W]
    ∪{#emph[ϕ];}#emph[,D];⟩ 怀疑得出的公式也可以从 ⟨#emph[W,D];⟩
    怀疑得出。反之亦然。

    - 否证
      - 反例: 设 ⟨W, D⟩ = ⟨∅, { :a/a, :b/b}⟩，ϕ = a∨b 可被怀疑得出。但 ⟨W∪{a∨b}, D⟩ 可怀疑得出 a，而原理论无法怀疑得出 a。
  ]

3. 考虑如下程序：
-  Π3 ={p←a.,q ←b.,a ←.}，计算 MΠ3
  - MΠ3={a,p}
-  Π4 ={p←p.}，计算 MΠ4
  - MΠ4=∅
-  Π5 ={p←p.,q ←.}，计算 MΠ5
  - MΠ5={q}
- Π6 ={anc(X,Y) ←par(X,Y).,
  - anc(X,Y ) ← par(X,Z),anc(Z,Y).,
  - par(a,b) ← .,par(b,c) ← .,par(d,e) ← .}，计算 MΠ6
    - MΠ6={par(a,b),par(b,c),par(d,e),anc(a,b),anc(b,c),anc(a,c),anc(d,e)}