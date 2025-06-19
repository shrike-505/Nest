#set text(font: "STZhongsong")
人工智能逻辑 课后练习 15 2025/05/27

专业：人工智能

学号 + 姓名：

#let def = text("def")
#let arg = text("arg")
#let att = text("att")
#let tin = text("in")
#let out = text("out")
#let undec = text("undec")
#let ng = text("ng")
#let tnot = text("not")

1. 请使用基于回答集编程的方法计算图中 3 个论辩框架的外延

  - 分别写出三个论辩框架的回答集程序 $P^text("pr")_text("Nieves")$;
        - (a) 
            - $def(a) or def(b) <-$
            - $def(a) or def(c) <-$
            - $def(b) or def(c) <-$
            - $def(b) or def(d) <-$
            - $def(c) or def(d) <-$
            - $def(a) <-$
            - $def(b) <- def(b)$
            - $def(c) <- def(c)$
            - $def(d) <- def(c), def(b)$
        - (b)
            - $def(a) or def(b) <-$
            - $def(a) or def(c) <-$
            - $def(b) or def(c) <-$
            - $def(a) or def(d) <-$
            - $def(c) or def(e) <-$
            - $def(a) <- def(a), def(c)$
            - $def(b) <- def(b), def(d), def(a)$
            - $def(c) <- def(b), def(d)$
            - $def(d) <- def(b), def(d)$
            - $def(e) <- def(a)$
        - (c)
            - $def(a) or def(b) <-$
            - $def(a) or def(c) <-$
            - $def(b) or def(c) <-$
            - $def(a) or def(d) <-$
            - $def(c) or def(d) <-$
            - $def(b) or def(d) <-$
            - $def(a) <- def(c)$
            - $def(b) <- def(a)$
            - $def(c) <- def(b)$
            - $def(d) <- def(a), def(b), def(c)$
  - 分别写出三个论辩框架的回答集程序 $P^text("AF")_text("Wakaki") ∪ P_text("Wakaki")^text("co")$ 及 $P_text("Wakaki")^text("AF") ∪ P_text("Wakaki")^text("st")$ 。
        - (a)
            - $P^text("AF")_text("Wakaki") ∪ P_text("Wakaki")^text("co")$
                - $arg(a) <-$
                - $arg(b) <-$
                - $arg(c) <-$
                - $arg(d) <-$
                - $att(a, b) <-$
                - $att(a, c) <-$
                - $att(b, c) <-$
                - $att(c, b) <-$
                - $att(b, d) <-$
                - $att(c, d) <-$
                - $tin(a) <- arg(a), tnot ng(a)$
                - $undec(a) <- arg(a), tnot tin(a), tnot out(a)$
                - $tin(b) <- arg(b), tnot ng(b)$
                - $ng(b) ← tin(a),att(a, b)$
                - $ng(b) ← undec(a),att(a, b)$
                - $out(b) ← tin(a),att(a, b)$
                - $ng(b) ← tin(c),att(c, b)$
                - $ng(b) ← undec(c),att(c, b)$
                - $out(b) ← tin(c),att(c, b)$
                - $undec(b) ← arg(b),tnot tin(b),tnot out(b)$
                - $tin(𝑋) ← arg(𝑋),tnot ng(𝑋)$
                - $ng(𝑋) ← tin(𝑌),att(𝑌, 𝑋)$
                - $ng(𝑋) ← undec(𝑌),att(𝑌, 𝑋)$
                - $out(𝑋) ← tin(𝑌),att(𝑌, 𝑋)$
                - $undec(𝑋) ← arg(𝑋),tnot tin(𝑌),tnot out(𝑋)$
            - $P_text("Wakaki")^text("AF") ∪ P_text("Wakaki")^text("st")$
                - $arg(a) ← .$
                - $arg(b) ← .$
                - $arg(c) ← .$
                - $arg(d) ← .$
                - $att(a, b) ← .$
                - $att(a, c) ← .$
                - $att(b, c) ← .$
                - $att(c, b) ← .$
                - $att(b, d) ← .$
                - $att(c, d) ← .$
                - $tin(a) ← arg(a),tnot ng(a)$
                - $undec(a) ← arg(a),tnot tin(a),tnot out(a)$
                - $tin(b) ← arg(b),tnot ng(b)$
                - $ng(b) ← tin(a),att(a, b)$
                - $ng(b) ← undec(a),att(a, b)$
                - $out(b) ← tin(a),att(a, b)$
                - $ng(b) ← tin(c),att(c, b)$
                - $ng(b) ← undec(c),att(c, b)$
                - $out(b) ← tin(c),att(c, b)$
                - $undec(b) ← arg(b),tnot tin(b),tnot out(b)$
                - $tin(𝑋) ← arg(𝑋),tnot ng(𝑋)$
                - $ng(𝑋) ← tin(𝑌),att(𝑌, 𝑋)$
                - $ng(𝑋) ← undec(𝑌),att(𝑌, 𝑋)$
                - $out(𝑋) ← tin(𝑌),att(𝑌, 𝑋)$
                - $undec(𝑋) ← arg(𝑋),tnot tin(𝑌),tnot out(𝑋)$
        - (b)
            - $P^text("AF")_text("Wakaki") ∪ P_text("Wakaki")^text("co")$
                - $arg(a) ← .$
                - $arg(b) ← .$
                - $arg(c) ← .$
                - $arg(d) ← .$
                - $arg(e) ← .$
                - $att(a, b) ← .$
                - $att(b, a) ← .$
                - $att(a, d) ← .$
                - $att(d, a) ← .$
                - $att(a, c) ← .$
                - $att(c, b) ← .$
                - $att(c, e) ← .$
                - $tin(𝑋) ← arg(𝑋),tnot ng(𝑋)$
                - $ng(𝑋) ← tin(𝑌),att(𝑌, 𝑋)$
                - $ng(𝑋) ← undec(𝑌),att(𝑌, 𝑋)$
                - $out(𝑋) ← tin(𝑌),att(𝑌, 𝑋)$
                - $undec(𝑋) ← arg(𝑋),tnot tin(𝑌),tnot out(𝑋)$
            - $P^text("AF")_text("Wakaki") ∪ P_text("Wakaki")^text("st")$
                - $arg(a) ← .$
                - $arg(b) ← .$
                - $arg(c) ← .$
                - $arg(d) ← .$
                - $arg(e) ← .$
                - $att(a, b) ← .$
                - $att(b, a) ← .$
                - $att(a, d) ← .$
                - $att(d, a) ← .$
                - $att(a, c) ← .$
                - $att(c, b) ← .$
                - $att(c, e) ← .$
                - $tin(𝑋) ← arg(𝑋),tnot ng(𝑋)$
                - $ng(𝑋) ← tin(𝑌),att(𝑌, 𝑋)$
                - $ng(𝑋) ← undec(𝑌),att(𝑌, 𝑋)$
                - $out(𝑋) ← tin(𝑌),att(𝑌, 𝑋)$
                - $undec(𝑋) ← arg(𝑋),tnot tin(𝑌),tnot out(𝑋)$
        - (c)
            - $P^text("AF")_text("Wakaki") ∪ P_text("Wakaki")^text("co")$
                - $arg(a) ← .$
                - $arg(b) ← .$
                - $arg(c) ← .$
                - $arg(d) ← .$
                - $att(a, c) ← .$
                - $att(b, a) ← .$
                - $att(c, b) ← .$
                - $att(a, d) ← .$
                - $att(b, d) ← .$
                - $att(c, d) ← .$
                - $tin(𝑋) ← arg(𝑋),tnot ng(𝑋)$
                - $ng(𝑋) ← tin(𝑌),att(𝑌, 𝑋)$
                - $ng(𝑋) ← undec(𝑌),att(𝑌, 𝑋)$
                - $out(𝑋) ← tin(𝑌),att(𝑌, 𝑋)$
                - $undec(𝑋) ← arg(𝑋),tnot tin(𝑌),tnot out(𝑋)$
            - $P^text("AF")_text("Wakaki") ∪ P_text("Wakaki")^text("st")$
                - $arg(a) ← .$
                - $arg(b) ← .$
                - $arg(c) ← .$
                - $arg(d) ← .$
                - $att(a, c) ← .$
                - $att(b, a) ← .$
                - $att(c, b) ← .$
                - $att(a, d) ← .$
                - $att(b, d) ← .$
                - $att(c, d) ← .$
                - $tin(𝑋) ← arg(𝑋),tnot ng(𝑋)$
                - $ng(𝑋) ← tin(𝑌),att(𝑌, 𝑋)$
                - $ng(𝑋) ← undec(𝑌),att(𝑌, 𝑋)$
                - $out(𝑋) ← tin(𝑌),att(𝑌, 𝑋)$
                - $undec(𝑋) ← arg(𝑋),tnot tin(𝑌),tnot out(𝑋)$


  #image("./ail19.png")



1. 考虑如下例子：脑转移瘤可能是脑瘤的一个可能原因，也是血清总钙升高的一个解释。反过来，这两者中的任何一种都可能导致患者偶尔陷入昏迷。严重的头痛也可以用脑瘤来解释。在贝叶斯网络中表示这些因果联系。设 a 代表“转移性癌症”，b 代表“血清总钙含量增加”，c 代表“脑瘤”，d 代表“偶尔昏迷”，e 代表“严重头痛”。


  - 给出这个网络中隐含的一个独立性假设的例子。

  - 假设给定以下概率：
    - $#emph[P];(#emph[a];) = 0#emph[.];2$

    - $#emph[P];(#emph[b] | #emph[a];) = 0#emph[.];8 , #emph[P];(#emph[b] |
      dash(a)) = 0#emph[.];2$

    - $#emph[P];(#emph[c] | #emph[a];) = 0#emph[.];2 , #emph[P];(#emph[c] |
      dash(a)) = 0#emph[.];05$

    - $#emph[P];(#emph[e] | #emph[c];) = 0#emph[.];8 , #emph[P];(#emph[e] |
      dash(c)) = 0#emph[.];6$

    - $#emph[P];(#emph[d] | #emph[b,c];) = 0#emph[.];8 , #emph[P];(#emph[d] |
      dash(b),c) = 0#emph[.];8$

    - $#emph[P];(#emph[d] | b,dash(c)) = 0#emph[.];8 , #emph[P];(#emph[d] | dash(b), dash(c)) = 0#emph[.];05$


假设还给出了某个病人患有严重头痛但尚未陷入昏迷。计算剩下的八种可能性（即，根据 #emph[a];、#emph[b] 和 #emph[c] 发生还是未发生）的联合概率。

$P(a=1,b=1,c=1,d=0,e=1)=0.2×0.8×0.2×0.2×0.8=0.00512$\
$P(a=1,b=1,c=0,d=0,e=1)=0.2×0.8×0.8×0.2×0.6=0.01536$\
$P(a=1,b=0,c=1,d=0,e=1)=0.2×0.2×0.2×0.2×0.8=0.00128$\
$P(a=1,b=0,c=0,d=0,e=1)=0.2×0.2×0.8×0.95×0.6=0.01824$\
$P(a=0,b=1,c=1,d=0,e=1)=0.8×0.2×0.05×0.2×0.8=0.00128$\
$P(a=0,b=1,c=0,d=0,e=1)=0.8×0.2×0.95×0.2×0.6=0.01824$\
$P(a=0,b=0,c=1,d=0,e=1)=0.8×0.8×0.05×0.2×0.8=0.00512$\
$P(a=0,b=0,c=0,d=0,e=1)=0.8×0.8×0.95×0.95×0.6=0.34656$\

求和即得到联合概率 $P(d=0, e=1) = 0.4112$

- 根据给出的数字，病人患有转移性癌症的先验概率是0.2。鉴于病人患有严重头痛但尚未陷入昏迷，我们现在是否更倾向于认为病人患有癌症？请解释。

    - $P(a=1|d=0,e=1)=(0.00512+0.01536+0.00128+0.01824)/0.4112=0.04/0.004112<0.2$
    - 我们不倾向于认为病⼈患有癌症。未昏迷的结果更符合b或c不存在的场景，而癌症作为它们的共同原因，其概率被削弱