#import "@preview/ori:0.2.3": *
#import "@preview/gentle-clues:1.2.0" : *
// #set heading(numbering: numbly("{1:一}、", default: "1.1  "))
#set math.equation(numbering: "(1)")

#show: ori.with(
  title: "TCS - 毛宇尘老师班",
  author: "shrike505",
  subject: "理论计算机科学导引",
  semester: "2025-2026 秋冬学期",
  date: datetime.today(),
  maketitle: true,
  makeoutline: true,
  // theme: "dark",
  // media: "screen",
)

= 语言、自动机、正则表达式

#quote-box[一言以蔽之，它（TCS）研究的是问题的上界与下界。]

需要界定_计算_所需要解决的_问题_，以及_计算_所需要的_设备（模型）_。

这一节先规定前者。回顾一些经典的算法或数学上的问题：给定带权重的图 $G$，求其中的最短路/其的最小生成树；提供矩阵 $A, B$，求其乘积 $A B$。这些问题都可以看作一个函数：给定输入，求输出。

与程序设计中的函数强调 implementation（即 How to compute the answer）相比，这里的函数更多具有数学意义，强调 specification（即 What should the answer be）。

接下来聚焦这些函数的_输入_，计算机无法理解图、矩阵这些概念，只能理解二进制串（binary string），也就是一串又一串的 0 和 1——于是要通过某些编码方式将这些元素编码为 01 串。先定义一个字符表（Alphabet）：$Sigma = {0, 1}$，于是长度为 $n$ 的二进制串的集合可表示为 $Sigma^n = Sigma times Sigma times ... times Sigma = {(a_1, a_2, ..., a_n) | a_i in Sigma}$

#definition-box[特别规定 $Sigma^0$ 是长度为 0 的串的集合，这个串用 $e$ 表示，即 $Sigma^0 = {e}$

$Sigma^* = union.big_(n>=0) Sigma^n$ 即为所有长度的二进制串集合。]


#tip-box(title: "前缀（Prefix）")[$x = a_1a_2...a_n, y = b_1b_2...b_n$ 的拼接（Concatenation）为 $x y = a_1a_2...a_n b_1b_2...b_n$\
$x$ 是 $y$ 的一个前缀（Prefix），当对于某些 $z in Sigma^*, y = x z$\
类似的可以定义后缀（Suffix），不再赘述]

#fancy-box()[可以将 $Sigma$ 中的 0 和 1 换成任意字符，例如26字母，方框三角圆，以此组建你自己的 Alphabet！] 

== 编码（Encoding）

有了最基础的元素（字符），将图、矩阵、等等等等计算函数的输入转化为字符串的过程，称为编码，即一个_映射_ $E: A-> {0, 1}^*$。

#tip-box(title: "编码性质")[
    显然，这个映射需要是单射（injective，在下文中会频繁表示为one-to-one），即不同元素的映射结果（得到的字符串）必须是不同的。
]

#example[
    - 自然数 $n in N$（$"parity"(n)$ 是 $n$ 对 2 取余的结果）：$N t S(n) = cases(
        0 &"if" n = 0,
        1 &"if" n = 1,
        N t S(floor(n/2)) "parity(n)" &"if" n > 1
    ) $
        - 亦即 $n$ 的二进制表示
    - 自然数对 $(a,b) in N times N$，自然的想法是 $a$ 的编码拼接 $b$ 的编码，但是会出现编码重复，并不是单射
        - 对于 $1110$，可以解释为 $(1,6)$ 和 $(3,2)$，这实质上是因为在计算机读取完前两个 $1$ 时，并不知道它代表 $3$ 还是一个其他数的_前缀_
]

在第二个例子的教训下，我们需要找到的编码映射是 prefix-free 的，即对于任何的 $x eq.not x'$，都有 $E(x) eq.not E(x')$。

接下来myc老师突然就这个 prefix-free 证明了一个_寻找另一种编码_的引理，感觉很突兀。

#lemma[假设已经存在一个 prefix-free 的编码 $E: A-> {0,1}^*$，那么对于编码 $dash(E): A^* -> {0,1}^*$（$A^* = union.big_(n>=0) A^n$，我理解为一个由_任意长待映射元素序列_组成的集合，接下来要找到对这些元素序列的编码），命 $dash(E)(a_1a_2...a_n) = cases(E(a_1)E(a_2)...E(a_n) &"if" n >= 1, e &"if" n = 0)$，那么 $dash(E)$ 是 one-to-one 的]