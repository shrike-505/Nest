#set text(font: "STZhongsong")
#import "@preview/fletcher:0.5.7" : *
#import "@preview/cetz:0.3.4": tree, canvas

人工智能逻辑 课后练习 14 2025/05/20

专业：人工智能

学号 + 姓名：3230105892 高玮轩

+ #strong[考虑一个具有以下论证的论辩框架：];{#emph[A];−#emph[G];}#strong[，及以下的攻击关系：];#emph[A]
  #strong[和] #emph[B] #strong[相互攻击，];#emph[E] #strong[和] #emph[G]
  #strong[相互攻击，];#emph[C] #strong[攻击] #emph[B];#strong[，];#emph[D]
  #strong[攻击] #emph[A] #strong[，];#emph[E] #strong[攻击] #emph[D]
  #strong[，];#emph[F] #strong[攻击] #emph[D] #strong[。]

  - 请绘制上述论辩框架。

    #figure(diagram(
        let (A, B, C, D, E, F, G) = ((0,0), (1,0), (2,0), (0,1), (1,1), (2,1), (3,1)),
        node(A, "A",stroke: 1pt), node(B, "B",stroke: 1pt), node(C, "C",stroke: 1pt), node(D, "D",stroke: 1pt),
        node(E, "E",stroke: 1pt), node(F, "F",stroke: 1pt), node(G, "G",stroke: 1pt),
        edge(A, B,"<|-|>"), edge(C, B, "-|>"), edge(E, G, bend: 30deg,"<|-|>"), edge(D, A,"-|>"), edge(E, D,"-|>"), edge(F, D,bend: 30deg,"-|>"),
    ))

  - 根据基语义，确定 P 和 O 关于论证 #emph[A] 的博弈中的所有策略。指出这些策略中哪些是赢策略。由于正方不能重复自己的移动，得到争辩子树为下：
    #figure(canvas(
        tree.tree(
            (
                [A],
                (
                    [B],
                    (
                        [C],
                    )
                    
                ),
                (
                    [D], (
                        [E], (
                            [G]
                        )
                    ),(
                        [F]
                    )
                )
            )
        ),
    ))

    策略：$A<-B<-C, A<-D<-E<-G, A<-D<-F$，其中赢策略为 $A<-B<-C$ 和 $A<-D<-F$。

+ #strong[对于图中的论辩框架，考虑如下指定的论证在基语义下引起的争辩树。对于每个可证明的论证，提供
  P 的一个赢策略。对于每个不可证明的论证，说明 P 的策略为何失败。]

    - 在 (i)：考查 #emph[a];、#emph[b] 和 #emph[d] 。
        - a: 赢策略即唯一一条防御线 $a$
        - b: 对于唯一策略，存在争辩 $b<-a$ 不是正方的防御线，所以不可证明
        - d: 赢策略即争辩子树 $d<-b<-a$ 和 $d<-c<-a$
    - 在 (ii)：考查 #emph[c] 和 #emph[e] 。
        - c: 赢策略为两条防御线 $c<-a<-d$ 和 $c<-a<-b$
        - e: PRO 在 $e<-c<-a<-d$ 和 $e<-c<-a<-b$ 中落败，无赢策略

    - 在 (iii)：考查 #emph[a];、#emph[b] 和 #emph[c] 。
        - a: 赢策略即唯一一条防御线 $a<-b<-c$
        - b: 赢策略即唯一一条防御线 $b<-c<-a$
        - c: 赢策略即唯一一条防御线 $c<-a<-b$
        
        #image("ail19.png")
