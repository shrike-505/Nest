#set text(font:"LXGW WenKai")

= 人工智能逻辑 课后练习 6 2025/03/25

== 专业：人工智能

== 学号 + 姓名：3230105892 高玮轩

1. 把下列公式变换为前束范式：

  1. $∃x#sub[1];F(y,x#sub[1];) ↔∀x#sub[2];G(x#sub[2];)$\
      $&equiv (exists x_1 F(y, x_1) -> forall x_2 G(x_2)) and (forall x_2 G(x_2) -> exists x_1 F(y, x_1))$\
      $&equiv (not exists x_1 F(y, x_1) or forall x_2 G(x_2)) and (not forall x_2 G(x_2) or exists x_1 F(y, x_1))$\
      $&equiv (forall x_1 not F(y, x_1) or forall x_2 G(x_2)) and (exists x_2 not G(x_2) or exists x_1 F(y, x_1))$\
      $&equiv (forall x_1 forall x_2 (not F(y, x_1) or G(x_2))) and (exists x_2 exists x_1 (not G(x_2) or F(y, x_1))))$\
      将上述存在量词后的 $x_1, x_2$ 重命名为 $x_3, x_4$ :$&= forall x_1 forall x_2 exists x_3 exists x_4 ((not F(y, x_1) or G(x_2)) and (not G(x_2) or F(y, x_1)))$
  2. $∀#emph[x];#sub[1];(#emph[F];(#emph[x];#sub[1];) → ∃#emph[x];#sub[2];(#emph[G];(#emph[x];#sub[2];) → #emph[F];(#emph[x];#sub[1];)∨∀ x_3 #emph[G];(#emph[x];#sub[3];)))$\
      $&equiv forall x_1 (not F(x_1) or exists x_2 (not G(x_2) or F(x_1) or forall x_3 G(x_3)))$\
      $&equiv forall x_1 (not F(x_1) or exists x_2 not G(x_2) or F(x_1) or forall x_3 G(x_3)))$\
      $&equiv exists x_2 not G(x_2) and forall x_3 G(x_3)$\
      $&equiv text("False")$

2. 本题涉及如何用一阶逻辑来形式化数学中群的特性。给定一个二元函数 #emph[f] #strong[和一个对象] #emph[e];#strong[，集合] #emph[G] #strong[是一个群，当且仅当：]

  - #emph[f] #strong[满足结合律；]

  - #emph[e] #strong[是] #emph[f] #strong[的单位元，即对于任意]
    #emph[x];#strong[，];#emph[f];(#emph[e,x];) = #emph[f];(#emph[x,e];) =
    #emph[x];#strong[；]

  - #strong[每个元素都有一个逆元，即对于任意] #emph[x];#strong[，都存在]
    #emph[i];#strong[，使得] #emph[f];(#emph[x,i];) = #emph[f];(#emph[i,x];)
    \= #emph[e];#strong[。]

    - (1) 用含有两个非逻辑符号 #emph[f] 和对象 #emph[e] 的一阶逻辑语言来形式化上述三个句子；
      - 结合律：$forall x forall y forall z f(x, f(y, z)) = f(f(x, y), z)$
      - 单位元：$forall x (f(e, x) = f(x, e) = x)$
      - 逆元：$forall x exists z (f(x, z) = f(z, x) = e)$
    - (2) 利用逻辑解释来证明上述句子在逻辑上蕴含群的如下特性：对于任意 #emph[x] 和 #emph[y];，存在 z 使得 f(x,z) = y；
      - 由于逆元存在，$forall x exists i (f(x, i) = f(i, x) = e)$
      - $forall y$ 定义 $z = f(i, y)$
      - 则 $f(x,z) = f(x, f(i,y)) = f(f(x,i), y) = f(e,y) = y$
    - (3) 请说明在上一步证明中如何把 #emph[z] 的值表示为 #emph[x] 和 #emph[y] 的函数。
      - 即定义的 $z = f(i, y)$
      - 其中 $i$ 为 $x$ 的逆元

3. 假设我相信下列每句话：

  - #strong[龙是存在的。]

  - #strong[龙不是在洞里睡觉，就是在树林里猎食。]

  - #strong[如果龙饿了，那么它不能够睡觉。]

  - #strong[如果龙累了，那么它不能够猎食。]

#strong[把上述句子翻译为一阶公式。使用消解来回答如下问题：]

  - 论域 $D = $ 全体龙
  - 龙是存在的：$exists d$
  - $forall x (text("SleepInCave")(x) or text("Hunt")(x))$
  - $forall x (text("Hungry")(x) -> not text("SleepInCave")(x)) equiv forall x (not text("Hungry"(x) or not text("SleepInCave")(x))$
  - $forall x (text("Tired")(x) -> not text("Hunt")(x)) equiv forall x (not text("Tired"(x) or not text("Hunt")(x)))$

  在下面两题中，先实例化 $exists d$，再使用消解。
  - (1) 当龙饿的时候，它做什么？
    - 加入 $not text("Hunt")(d)$，（由于不涉及累不累，不考虑最后一句）则有子句集合 ${not text("Hunt")(d), [text("SleepInCave")(d), text("Hunt")(d)], [not text("Hungry")(d), not text("SleepInCave")(d)], text("Hungry")(d)}$\
    - 发现消解后得到空子句，说明 $text("Hunt")(d)$，即龙饿的时候，它会猎食

  - (2) 当龙累的时候，它做什么？
    - 加入 $not text("SleepInCave")(d)$，（由于不涉及饿不饿，不考虑第三句）则有子句集合 ${not text("SleepInCave")(d), [text("SleepInCave")(d), text("Hunt")(d)], [not text("Tired")(d), not text("Hunt")(d)], text("Tired")(d)}$\
    - 发现消解后得到空子句，说明 $text("SleepInCave")(d)$，即龙累的时候，它会睡觉