#set text(font: "LXGW WenKai")
#import "@preview/fletcher:0.5.7" : *

人工智能逻辑 课后练习 12 2025/05/06

专业：人工智能

学号 + 姓名：

+ #strong[用 8.6 节中的模块化方法写出下图所示的抽象论辩框架的优先标记。]

#figure(diagram(
  let (a,b,c,d,e) = ((6,0),(8,0),(10,0),(12,0),(14,0)),
  node(a, "a", stroke: 1pt),
  node(b, [b], stroke: 1pt),
  node(c, [c], stroke: 1pt),
  node(d, [d], stroke: 1pt),
  node(e, "e", stroke: 1pt),
  edge(a,b,bend: -30deg, "-|>"),
  edge(b,a,bend: -30deg, "-|>"),
  edge(b,c,"-|>"),
  edge(c,d,"-|>"),
  edge(d,e,bend: 30deg, "-|>"),
  edge(e,d,bend: 30deg, "-|>"),
))

in(L) = {a,c,e} out(L) = {b,d} undec(L) = {}

+ #strong[用结构化论辩框架表示如下缺省理论（本书第六章内容）表示的知识，并写出该结构化论辩框架产生的抽象论辩框架。]

#figure[$D = {frac(text("quaker")(x):text("pacifist")(x),text("pacifist")(x)), frac(text("republican")(x):not text("pacifist")(x), not text("pacifist")(x))}$]

#figure[$W = {text("quaker(Nixon)"), text("republican(Nixon)")}$]

令 $s_1 = frac(text("quaker")(x):text("pacifist")(x),text("pacifist")(x)), s_2 = frac(text("republican")(x):not text("pacifist")(x), not text("pacifist")(x))}$

#let Nixon = text("Nixon")
#let pacifist = text("pacifist")
#let quaker = text("quaker")
#let republican = text("republican")

论证 $a_1 = quaker(Nixon) tack_{s_1}pacifist(Nixon)$

论证 $a_2 = republican(Nixon) tack_{s_2}not pacifist(Nixon)$

抽象论辩框架：

#figure(diagram(
  let (p1,p2,q,r) = ((0,0),(2,0),(0,2),(2,2)),
  node(p1, pacifist+"("+Nixon+")"),
  node(p2, $not$+pacifist+"("+Nixon+")"),
  node(q, quaker+"("+Nixon+")"),
  node(r, republican+"("+Nixon+")"),
  edge(p1,p2,"-|>",shift: 0.1),
  edge(p2,p1,"-|>",shift: 0.1),
  edge(q,p1,"-|>",label: $s_1$),
  edge(r,p2,"-|>",label: $s_2$),
))
)

#strong[\3. 设] $Φ = {∀#emph[x];(#emph[P];(#emph[x];) →
#emph[A];(#emph[x];))#emph[,];∀#emph[x];(#emph[A];(#emph[x];) →
#emph[R];(#emph[x];))}$ #strong[为一组命题集合,] #emph[A] =
{#emph[P];(#emph[a];)} #strong[为一组假设，];#emph[R] = {MP}
#strong[为一组规则集合，其中] MP #strong[是肯定前件规则。]

- 请构造一个论证，使其结论为 #emph[R];(#emph[a];)。
  - 命 $R = {A(x)->Q(x)}$
  - 论证：$forall x(P(x)->A(x))$
  - $P(a)$;
  - 因此 $A(a)$;
  - $forall x(A(x)->R(x))$
  - $Q(a)$;
  - 因此 $R(a)$;

- 该论证的类型是什么？
  - 演绎论证