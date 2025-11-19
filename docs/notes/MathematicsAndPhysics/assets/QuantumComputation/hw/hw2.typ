#import "@preview/ori:0.2.3" : *
#import "../preludes.typ": *

#show: ori.with(
	title: "理论作业二 量子测量与量子算法",
	font: (main: "STZhongsong"),
	author: "redacted",
	maketitle: true,
	semester: "25-26 秋冬学期",
	date: datetime.today(),
	subject: "量子计算理论基础与软件系统",
	size: 12pt,
)

= 理论作业二 量子测量与量子算法

1. 假设有初始化为 $state(1)$ 态的量子寄存器若干，给出分别使用酉算子 $H$、$X$、$T$、$S$ 进行测量的结果。
	
	- $H$: 进行谱分解得到 $H = sum_(i = 1)^2 lambda_i state(e_i) stater(e_i)$

		$lambda_1 = 1 , state(e_1) = frac(state(0) + (sqrt(2) - 1) state(1), sqrt(4 - 2 sqrt(2)))$

		$lambda_2 = - 1 , state(e_2) = frac(state(0) + (- sqrt(2) - 1) state(1), sqrt(4 + 2 sqrt(2)))$

		因此使用酉算子 $H$ 测量 $state(1)$ 的结果为 $state(phi_1) = state(e_1)$ 的概率为 $P(phi_1) = innerprod(1, e_1) innerprod(e_1, 1) = frac(3-2 sqrt(2), 4 - 2 sqrt(2))$；为 $state(phi_2)$ 的概率为 $P(phi_2) = innerprod(1, e_2) innerprod(e_2, 1) = frac(3+2 sqrt(2), 4 + 2 sqrt(2))$。

	- $X$: 本征值 $lambda = plus.minus 1$，本征向量 $state(plus) = (state(0) + state(1))/sqrt(2), state(minus) = (state(0) - state(1))/sqrt(2)$

    	得到 $state(plus)$ 概率为 $p_1 = |innerprod(1, plus)|^2 = 1/2$，得到 $state(minus)$ 概率为 $p_2 = |innerprod(1, minus)|^2 = 1/2$

	- $S = mat(1,0;0,i)$: 实本征值 $lambda = 1$，对应本征态 $state(0)$；虚本征值 $lambda = i$，对应本征态 $state(1)$。

		得到 $state(0)$ 概率为 $p_1 = |innerprod(1, 0)|^2 = 0$，得到 $state(1)$ 概率为 $p_2 = |innerprod(1, 1)|^2 = 1$

	- $T = mat(1,0;0, e^(i pi / 4))$: 实本征值 $lambda = 1$，对应本征态 $state(0)$；虚本征值 $lambda = e^(i pi / 4)$，对应本征态 $state(1)$。

		得到 $state(0)$ 概率为 $p_1 = |innerprod(1, 0)|^2 = 0$，得到 $state(1)$ 概率为 $p_2 = |innerprod(1, 1)|^2 = 1$

2. 证明 Grover 算法中的算子 $G$ 每次作用时使量子态向 $state(beta)$ 方向旋转角度 $theta$。
  - 证明：记 Oracle 搜索的目标基矢态组成的等权叠加态为 $state(beta)$，与其正交的非目标基矢态组成的等权叠加态为 $state(alpha)$。算法制备初始量子态为 $state(psi_0) = cos(theta/2) state(alpha) + sin(theta/2) state(beta) = 1/sqrt(N) sum_(x = 0)^(N - 1) state(x)$，其中 $sin(theta/2) = sqrt(M / N), cos(theta/2) = sqrt((N - M) / N)$，$M$ 为目标态个数，$N$ 为总态数。
  - 由 Grover 算法，算子 $G = D O$，其中 $O$ 为 Oracle 算子，$D = 2 outerprod(psi_0, psi_0) - I$，试证明 $G$ 作用 $k$ 次后的量子态为 $state(psi_k) = cos((2 k + 1) theta / 2) state(alpha) + sin((2 k + 1) theta / 2) state(beta)$。
    - $k = 0$ 时，直接成立。
    - 由归纳假设有 $state(psi_(k+1)) = G state(psi_k) = D O state(psi_k) = D(cos((2 k + 1) theta / 2) state(alpha) - sin((2 k + 1) theta / 2) state(beta))$
    - 定义 $state(psi_0^perp) = sin(theta/2) state(alpha) - cos(theta/2) state(beta)$，则 $state(alpha) = cos(theta/2) state(psi_0) + sin(theta/2) state(psi_0^perp)$，$state(beta) = sin(theta/2) state(psi_0) - cos(theta/2) state(psi_0^perp)$
    - 易得，$D state(psi_0) = state(psi_0), D state(psi_0^perp) = - state(psi_0^perp)$，那么 $D state(alpha) = cos(theta/2) state(psi_0) - sin(theta/2) state(psi_0^perp) = cos(theta) state(alpha) + sin(theta) state(beta)$，$D state(beta) = sin(theta/2) state(psi_0) + cos(theta/2) state(psi_0^perp) = sin(theta) state(alpha) - cos(theta) state(beta)$
    - 代入归纳式，即得 $state(psi_(k+1)) = cos((2 (k + 1) + 1) theta / 2) state(alpha) + sin((2 (k + 1) + 1) theta / 2) state(beta)$，归纳成立。
  - 那么，每次作用算子 $G$ 时，量子态均旋转角度 $theta$。
3. 根据 Grover 算法中 $M$、$N$ 的定义，令 $gamma = M / N$，证明在 $state(alpha)$、$state(beta)$ 基下，Grover 算法中的算子 $G$ 可以写为 $mat(delim: "[", 1 - 2 gamma, - 2 sqrt(gamma - gamma^2); 2 sqrt(gamma - gamma^2), 1 - 2 gamma)$。
  - 证明：由上题可知，$G state(alpha) = cos(theta) state(alpha) + sin(theta) state(beta), G state(beta) = - sin(theta) state(alpha) + cos(theta) state(beta)$，其中 $sin(theta/2) = sqrt(M / N), cos(theta/2) = sqrt((N - M) / N)$，那么 $sin(theta) = 2 sin(theta/2) cos(theta/2) = 2 sqrt(gamma - gamma^2), cos(theta) = cos^2(theta/2) - sin^2(theta/2) = 1 - 2 gamma$。
  - 代入得到 $G state(alpha) = (1 - 2 gamma) state(alpha) + 2 sqrt(gamma - gamma^2) state(beta), G state(beta) = - 2 sqrt(gamma - gamma^2) state(alpha) + (1 - 2 gamma) state(beta)$，即在 $state(alpha)$、$state(beta)$ 基下，Grover 算法中的算子 $G$ 可以写为 $mat(delim: "[", 1 - 2 gamma, - 2 sqrt(gamma - gamma^2); 2 sqrt(gamma - gamma^2), 1 - 2 gamma)$。
- Bonus: 给出 RSA 算法加密、解密过程的证明，即证明明文为 $a equiv C^d #h(0em) mod med n$。

  - 加密方通过 $C=a^e mod n$ 将明文 $a$ 加密为密文 $C$。取 $e$ 模 $phi(n)$ 的乘法逆元$d$，使得 $e d=1 mod phi(n)$。取大素数 $p$、$q$，计算 $n=p q$，并将 $(e, n)$ 作为公钥发布，将 $d$ 作为私钥保密。
  - 命 $e d = k phi(n) + 1$，若 $gcd(a, n) = 1$，由欧拉定理，有 $a^(phi(n)) = 1 mod n$，则 $C^d = a^(e d) mod n = a^(k phi(n) + 1) mod n = a mod n$，即明文 $a equiv C^d mod n$
  - 若 $gcd(a, n) = gcd(a, p q) eq.not 1$，则 $gcd(a, p) = p$ 或 $gcd(a, q) = q$。不妨设 $gcd(a, p) = p$，则 $a equiv 0 mod p$，那么 $gcd(a, q) = 1$。由欧拉定理，有 $a^(phi(q)) equiv 1 mod q$，那么 $a^(phi(p) phi(q)) equiv 1 mod q$
    - 命 $a^(phi(p) phi(q)) = m q + 1$，由于 $phi(n) = phi(p)phi(q)$ 那么 $C^d = a^(e d) mod n = a^(k phi(n) + 1) mod n = a^(k phi(p) phi(q) + 1) mod n = (m q + 1) a mod n = a mod n$，即明文 $a equiv C^d mod n$