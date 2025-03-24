#set text(font: "LXGW WenKai Mono")

人工智能逻辑 课后练习5 2025/03/18

专业：人工智能

学号+姓名：3230105892 高玮轩

+ #strong[给出一个解释，使得如下公式为真：];∀#emph[x];(#emph[R];(#emph[c,x];)
  → #emph[R];(#emph[c,f];(#emph[c,x];)))#strong[，其中] #emph[c]
  #strong[是常元符号，] #emph[f] #strong[是函数符号，];#emph[R]
  #strong[是关系符号。]

  只需定义 $f(x, y) = y$，那么 $f(c,x) = x$，则公式化为 $forall x(R(c,x) → R(c,x))$，这是显然为真的。

+ #strong[证明];∀#emph[x];(#emph[F];(#emph[x];) →
  #emph[G];(#emph[f];(#emph[x];))) ∧∀#emph[xF];(#emph[x];)
  ∧∃#emph[x];¬#emph[G];(#emph[x];) #strong[是可满足的。]】

  定义 $forall x F(x) = 1, G(x): x >= 1, f(x) = x+1$，则上述公式化为 $forall x(1 -> G(x+1)) and forall x 1 and exists x(x < 1) equiv forall x (x+1 >= 1) and exists x (x < 1)$，显然成立。

+ #strong[给下列句子分别提供一个逻辑解释，使之为假，并使另外两个句子为真：]

  - ∀#emph[x];∀#emph[y];∀#emph[z];\[(#emph[P];(#emph[x,y];) ∧
    #emph[P];(#emph[y,z];)) → #emph[P];(#emph[x,z];)\]

  - ∀#emph[x];∀#emph[y];\[(#emph[P];(#emph[x,y];) ∧
    #emph[P];(#emph[y,x];)) → (#emph[x] ≡ #emph[y];)\]


  - ∀#emph[x];∀#emph[y];\[#emph[P];(#emph[a,y];) →
    #emph[P];(#emph[x,b];)\]

    - 第一句为假：
      - 论域 $D = {a,b,c}, P(b,c)=P(c,a)=P(b,b)=P(c,c)=真, P(a,a)=P(a,b)=P(a,c)=P(b,a)=P(c,b)=假$
      - 则由于 $P(b,c) = P(c,a) = 真$ 但 $P(b,a)$ 为假，所以第一句为假。 
      - 第二句显然为真，且由于所有的 $P(a,*)$ 都为假，所以第三句也为真。
    - 第二句为假：
      - 论域 $D = {a,b}$ 在所有情况下令 $P(*,*)$ 都为真 
      - 那么第一、三句为真，对第二句，由于 $P(a,b) and P(b,a)$ 但 $a != b$，所以第二句为假。
    - 第三句为假：
      - 论域 $D = {a,b}, P(a,b) = P(b,b) = 假, P(a,a) = P(b,a) = 真$
      - 那么第一、二句为真，对第三句，由于 $P(a,b) = 真$ 但 $P(b,b) = 假$，所以第三句为假。