#set text(font: "LXGW WenKai Mono")

人工智能逻辑 课后练习 9 2025/04/15

专业：人工智能

学号 + 姓名：3230105892

+ #strong[给定缺省理论] $#emph[T] = (#emph[D,W];)$#strong[, 其中] $#emph[D]
  \= { }#strong[,] #emph[W] =
  {#emph[d];#sub[1];#emph[,d];#sub[2];#emph[,d];#sub[3];#emph[,d];#sub[4];#emph[,d];#sub[5];}$

  $d_1 = frac(top : p,r), d_2 = frac(r : not q, not s), d_3 = frac(top : s, q), d_4 = frac(q : t, not p), d_5 = frac(not s : t, not q)$


  用外延的不动点定义求出的所有外延，并用过程树对求解过程加以说明。

  #image("./ail9.png")

  则外延为：

  $E_1 = T h \({r, not s, not q}\)$

  $E_2 = T h \({q, not p}\)$

+ #strong[给定缺省理论] $#emph[T] = (#emph[D,W]) $#strong[, 其中] $#emph[D] = {#emph[a,d];}$#strong[,] $#emph[W] = {#emph[d];#sub[1];#emph[,d];#sub[2];#emph[,d];#sub[3];}$ 
  
  $d_1 = frac(a : b, b), d_2 = frac(b : c,d), d_3 = frac(a : not b, not c), d_4 = frac(not c : not d, b)$


  #strong[判断下列缺省规则的序列] Π #strong[是否是T的一个过程。如果是，判断它是否是成功的和封闭的。]

  + $Π = (#emph[d];#sub[1];)$

    $I n \(Pi) = T h \({a, b, d}\ O u t \(Pi\) = {not b}$

    $d_2$ 可被成功应用于 $I n (Pi)$

    是，成功但不封闭

  + $Π = (#emph[d];#sub[4];)$

    $not c in.not D$ 
    
    不是过程

  + $Π = (#emph[d];#sub[1];#emph[,d];#sub[3];)$

    应用 $d_1$ 后，$I n(Π[1]) = T h \({a, b, d}\)$，$d_3$ 正当条件 $not b$ 与 $I n(Π[1])$ 不相容
    
    不是过程

  + $Π = (#emph[d];#sub[3];#emph[,d];#sub[1];)$

    $I n (Pi) = T h ({a, b, d, not c})$,$O u t(Pi) = {not b, not c}$

    没有可应用的条件

    是，封闭但不成功

  + $Π = (#emph[d];#sub[1];#emph[,d];#sub[2];)$

    $I n (Pi) = T h ({a, b, d})$,$O u t(Pi) = {not b, not c}$，无可应用的条件

    是，封闭且成功
