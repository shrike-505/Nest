#set text(font: "LXGW WenKai")

人工智能逻辑 课后练习13 2025/05/13


专业：人工智能

学号+姓名：

#block[
#set enum(numbering: "1.", start: 1)
+ #strong[请根据给定的推理规则补齐下图中前提与结论之间的关系。]

+ #strong[请画出论证以及论证之间的攻击关系。]
]

#quote(block: true)[
注：用虚线表示可废止的推理，用实线表示硬性的（演绎）推理。


#emph[r];1： #emph[x] 看上去具有某种属性 #emph[P] 是相信 #emph[x] 是
#emph[P] 的一个可废止理由。

#emph[r];2：半数以上被观察的 #emph[P] 具有 #emph[Q] 属性是相信绝大多数
#emph[P] 具有 #emph[Q] 属性的一个可废止理由。

#emph[r];3：绝大多数 #emph[P] 具有 #emph[Q] 属性并且 #emph[x] 是
#emph[P] 是相信 #emph[x] 是 #emph[Q] 的一个可废止理由。

#emph[r];4：一个关于鸟类的命题 #emph[ϕ] 被一位鸟类学者提出是相信命题
#emph[ϕ] 的一个可废止理由。

#emph[r];5： #emph[P] 是 #emph[Q] 的一个类并且 #emph[x] 是 #emph[P];，则
#emph[x] 是 #emph[Q];。

#emph[r];6： #emph[x] 是 #emph[R];，绝大多数 #emph[R] 不是
#emph[Q];，并且 #emph[R] 是 #emph[P] 的一个类，则“#emph[x] 是
#emph[P];”且“绝大多数 #emph[P] 是 #emph[Q];”并不蕴涵“#emph[x] 是
#emph[Q];”。
]

#image("./ail17.png")

#image("./ail18.jpeg")