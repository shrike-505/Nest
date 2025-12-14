#import "@preview/ori:0.2.3" : *
#import "../preludes.typ": *

#show: ori.with(
	title: "理论作业三 量子纠错",
	font: (main: "STZhongsong"),
	author: "高玮轩 3230105892",
	maketitle: true,
	semester: "25-26 秋冬学期",
	date: datetime.today(),
	subject: "量子计算理论基础与软件系统",
	size: 12pt,
)

= 理论作业三 量子纠错

1. 写出 9 量子比特 Shor 编码的稳定子，并证明其稳定 ${|0_L⟩, |1_L⟩}$ 张成的向量空间，其中

  $|0_L⟩ = frac((state(000) + state(111))(state(000) + state(111))(state(000) + state(111)), 2 sqrt(2))$

  $|1_L⟩ = frac((state(000) - state(111))(state(000) - state(111))(state(000) - state(111)), 2 sqrt(2))$

  #solution([
    稳定子为

    - $S_1 = Z_1 Z_2$
    - $S_2 = Z_1 Z_3$
    - $S_3 = Z_4 Z_5$
    - $S_4 = Z_4 Z_6$
    - $S_5 = Z_7 Z_8$
    - $S_6 = Z_7 Z_9$
    - $S_7 = X_1 X_2 X_3 X_4 X_5 X_6$
    - $S_8 = X_4 X_5 X_6 X_7 X_8 X_9$

    对 $i in [1,6]$，作用两次 $Z$ 操作，得到与原态相同的态，因此 $S_i state(0_L) = +1 |0_L⟩$，$S_i state(1_L) = +1 |1_L⟩$，$S_i state(phi_L) = +1 |phi_L⟩$。

    对 $i = 7$，作用六次 $X$ 操作，得到 $S_7 state(0_L) = |0_L⟩$，$S_7 state(1_L) = |1_L⟩$，对 $i=8$ 同理

    因此有 $S_i state(phi_L) = alpha S_i state(0_L) + beta S_i state(1_L) = alpha |0_L⟩ + beta |1_L⟩ = +1 |phi_L⟩$，即 $S_1, ... S_8$ 稳定 ${|0_L⟩, |1_L⟩}$ 张成的向量空间。
  ])

2. 证明操作 $dash(Z) = X_1 X_2 X_3 X_4 X_5 X_6 X_7 X_8 X_9$ 和 $dash(X) = Z_1 Z_2 Z_3 Z_4 Z_5 Z_6 Z_7 Z_8 Z_9$ 可以充当 Shor 编码中逻辑量子比特上的逻辑 Z 操作和逻辑 X 操作。(提示：推导 $dash(Z)$ 和 $dash(X)$ 作用在 $|0_L⟩$ 和 $|1_L⟩$ 上的形式)

  #solution([
    - $dash(Z) state(0_L) = state(0_L) = Z state(0_L), dash(Z) state(1_L) = - state(1_L) = Z state(1_L)$，因此 $dash(Z)$ 可以充当逻辑量子比特上的逻辑 $Z$ 操作。
    - $dash(X) state(0_L) = state(1_L) = X state(0_L), dash(X) state(1_L) = state(0_L) = X state(1_L)$，因此 $dash(X)$ 可以充当逻辑量子比特上的逻辑 $X$ 操作。
  ])

3. 下图展示了一个二维网格上码距为 3 的表面码。其中，空心圆点表示数据量子比特，实心圆点表示辅助量子比特，每个辅助量子比特对其相邻的数据量子比特执行征状测量。写出该纠错码的稳定子，并推导逻辑态 $|0_L⟩$ 和 $|1_L⟩$ 的形式。

  #figure(image("../static/image.png"))

  #solution([
    数据量子比特从上到下, 从左到右编为 1, 2, · · · , 9；辅助量子比特从上到下, 从左到右编为 1, 2, · · · , 8

    - $S_(Z 1) = Z_1 Z_2 Z_4 Z_5$
    - $S_(Z 2) = Z_5 Z_6 Z_8 Z_9$
    - $S_(Z 3) = Z_2 Z_3$
    - $S_(Z 4) = Z_7 Z_8$
    - $S_(X 1) = X_2 X_3 X_5 X_6$
    - $S_(X 2) = X_4 X_5 X_7 X_8$
    - $S_(X 3) = X_1 X_4$
    - $S_(X 4) = X_6 X_9$

    从 $state(0)^(times.o 9)$ 开始构造。其已经是所有 $Z$ 型稳定子和逻辑 $dash(Z)$ 的 +1 本征态。接下来需要对所有 $X$ 型稳定子进行投影（$state(0_L)$ 是通过将所有 $X$ 型稳定子群的元素作用在 $state(0)^(times.o 9)$ 上得到的叠加态）

    $state(0_L) prop product_(i=1)^4 (I+S_X i) state(0)^(times.o 9)$，展开后为 $state(0_L) = 1/4 sum_(g in G_X) g state(000000000)$，其中 $G_X = <S_(X 1), S_(X 2), S_(X 3), S_(X 4)>$。

    $state(1_L)$ 可以通过对 $state(0_L)$ 作用逻辑 $dash(X)$ 得到，即 $state(1_L) = dash(X) state(0_L) = X_1 X_2 X_3 state(0_L)$。代入得到 $state(1_L) = 1/4 sum_(g in G_X) g(X_1 X_2 X_3 state(000000000))$
  ])