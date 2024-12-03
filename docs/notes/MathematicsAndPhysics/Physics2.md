---
    comments: true
    tags:
        - 大二上笔记
---

> 这辈子有了

# 普通物理学Ⅱ（H）

> 任课教师：王业伍

!!! note "Ref"
    不好，有神：https://www.kailqq.cc/NOTE/Physics/

## 电磁学
电偶极子：一对间距为$d$，电荷量为$q$的异号电荷构成的偶极子。  
电偶极矩：$\overrightarrow{p}=q \overrightarrow{d}$。

### Flux 通量

![](./assets/GP.png)

立体角：$d\overrightarrow{A} = r^2 d\Omega$，等号左侧为面积微元，也等于 $dA \cdot \overrightarrow{n}$，其中 $\overrightarrow{n}$ 为单位法向量。

![](./assets/GP-2.png)

#### Gauss 定理
电通量：$\Phi = \int \overrightarrow{E} \cdot d\overrightarrow{A} = \frac{\Sigma q}{\varepsilon_0}$，其中$q$为闭合曲面内包含的电荷量。

!!! example "例"
    1. 无限长均匀带电线（$L \gt \gt R$的圆柱），线密度为$\lambda$，求距其轴心$r$处的电场强度。  
        ![](./assets/GP-3.png)  
        选取r处长为$h$的圆柱面，此时所有面积微元处的电场强度大小是一样的，则有$E \cdot 2\pi rh = \frac{\lambda h}{\varepsilon_0}$，所以$E = \frac{\lambda}{2\pi \varepsilon_0 r}$。
    2. 无限大带电平面
        ![](./assets/GP-4.png)
    3. 均匀带电球壳
        ![](./assets/GP-5.png)

Gauss 定理和库仑定律求电场强度：

![](./assets/GP-6.png)
    

### 电势

半径为R，带电量q的均匀带电球壳（r>R）：$U(r) = \int_r^{\infty} \frac{kq}{r^2} dr = \frac{kq}{r}$。

TBD

### 电容
半径为$r$的孤立球形导体：$C = \frac{q}{U} = 4\pi \varepsilon_0 r$。

- 平行板：
  - ![](./assets/GP-8.png)
- 圆柱形电容：
  - ![](./assets/GP-9.png)
- 球状电容：
  - ![](./assets/GP-10.png)

并联总电容：$C = \Sigma C_i$。串联总电容：$\frac{1}{C} = \Sigma \frac{1}{C_i}$。

!!! example "例"
    ![](./assets/GP-11.png)

### 极化

介电体处于电场中时，会在内部产生极化电荷，从而减小电场强度。极化电场$E_p = \frac{E}{k_e}$。$k_e$称为相对介电常数（Relative dielectric constant）。

有了介电体后，电容变为$C = k_e \varepsilon_0 \frac{S}{d}$。

![](./assets/GP-12.png)

考虑真空中两个由无数电偶极子组成的平行圆板，如上图所示，定义极化强度矢量$\overrightarrow{P} = \frac{\Sigma \overrightarrow{p}}{V}$（$\overrightarrow{p}$为电偶极矩，$\Delta V$ 为囊括的体积），则有$\overrightarrow{P} = \varepsilon_0 \chi_e \overrightarrow{E}$，其中$\chi_e$为电极化率。

$\chi_e + 1 = k_e$

有$\iint P dA = \Sigma_{out} q' = -\Sigma_{in} q'$

极化强度矢量与闭合曲面的内积积分等于该曲面表面的束缚电荷，等于该曲面内部电荷的相反数(外面有多少正的，里面就有多少负的)

这里的$q'$是极化电荷！所以这个不是高斯定理。

同时有面电荷密度$\sigma' = P \cdot n$，等于极化强度矢量在法向上的分量；由夹角来控制正负。

#### 介电质中的 Gauss 定理

（照抄<kailqq.cc>）

考虑一个正电荷$q_0$放在电介质中，其周围会产生极化电荷$q'$

由正宗的高斯定理得到 $\iint E d A = \frac{q_0 + q'}{\epsilon_0}$ 

而由极化电荷和强度矢量的性质有 $\iint P d A = -q'$

代入得到$\epsilon_0 \iint E dA = q_0 - \iint P d A$

尝试表示$q_0$：$q_0 = \iint (\epsilon_0 E + P) dA$

于是定义$D = \epsilon_0 E + P$为电位移矢量

这说明电位移矢量与闭合曲面内积面积分等于该曲面内的**自由电荷**（非极化）之和



![](./assets/gp27.png)

!!! example "例"
    ![](./assets/GP-13.png)  
    求这个具有两层介电体的电容以及表面的电荷密度。

#### 电容器中的能量

考虑一个平行板电容器，其电容为 $C$，电压为 $V$ ，则其具有的能量相当于从负极板不断将电荷移动到正极板，这样的过程中克服电场力所做的功

$W = \int_0^Q V dq = \frac{1}{2} C V^2$

考虑到平行板电容 $C = \frac{\epsilon_0 A}{d}$，$V = ED$

得到能量$E = W = \frac{1}{2} \epsilon_0 E^2 A d$

注意到$Ad$是夹在两板之间的体积，定义能量密度$\mu = \frac{1}{2} \epsilon_0 E^2$

### 电流
电流定义：$I = \frac{dq}{dt}$。

电流密度：$\overrightarrow{j} = \frac{dI}{dS} \overrightarrow{n}$。

得到电荷守恒：

![](./assets/GP-14.png)

若 $\frac{dq}{dt} = 0$，则上式为0.

平均而言，电流中电子以**漂移速度**$v_d$运动，$I = neSv_d$，则有$\overrightarrow{j} = - ne\overrightarrow{v_d}$。

#### 欧姆定律
![](./assets/GP-15.png)
这里的$\sigma$为电导率，$\rho$为电阻率，$\sigma = \frac{1}{\rho}$。

#### 基尔霍夫定律

- Junction定律：$i = \Sigma i_k$。
- Loop定律：在闭合回路中， $\Sigma U_k = \Sigma \epsilon_k + \Sigma i R_k = 0$。

!!! example "例"
    ![](./assets/GP-16.png)  
    注意这里i1 i2 i3的方向是自己假设的，然后运用基尔霍夫定律进行计算就行了。

#### RC电路
结合了电容和电阻的电路。

- 充电时：![](./assets/GP-17.png)
- 放电时：![](./assets/GP-18.png)

### 磁场

高中就不会的霍尔效应：

![](./assets/GP-19.png)

磁场是非保守场，所以没有势能的概念。

#### Biot-Savart 定律
定义电流元$Id\overrightarrow{l}$，则该电流元产生的磁场大小为$d\overrightarrow{B} = \frac{\mu_0}{4\pi} \frac{Id\overrightarrow{l} \times \overrightarrow{r}}{r^3}$。

则有$\overrightarrow{B} = \int d\overrightarrow{B} = \frac{\mu_0}{4\pi} \int \frac{Id\overrightarrow{l} \times \overrightarrow{r}}{r^3}$。

$\mu_0 = 4\pi \times 10^{-7} \mathrm{T \cdot m/A}$。

只适用于恒定电流。

- 真空直导线：$B = \frac{\mu_0 I}{2\pi d}$，其中$d$为导线到点的距离。
  - ![](./assets/GP-20.png)
- 电流圆环：$B = \frac{\mu_0 I R^2}{2(R^2 + z^2)^{3/2}}$。
  - ![](./assets/GP-21.png)

<https://blog.csdn.net/weixin_45864618/article/details/106672456>

#### 安培环路定理
$\oint \overrightarrow{B} \cdot d\overrightarrow{l} = \mu_0 I$。

在恒定电流的磁场中，磁感应强度沿任何闭合路径一周的线积分（即环路积分），等于闭合路径内所包围并穿过的电流的代数和的$\mu_0$倍

<https://zhuanlan.zhihu.com/p/142376701>

#### Gauss 定理（磁场Ver.）
$\iint B dA = 0$，$A$为真空中一个闭合曲面。

#### 磁偶极矩

$\overrightarrow{P_m} = I \overrightarrow{S}$，其中$I$为电流，$\overrightarrow{S}$平面单回路围起来的面积矢量。

### 法拉第电磁感应定律

定义磁通量：$\Phi = \int \overrightarrow{B} \cdot d\overrightarrow{A}$。

感生电动势：$\varepsilon = -\frac{d\Phi}{dt} = -\iint_S \frac{d\overrightarrow{B}}{dt} \cdot d\overrightarrow{A}$。

动生电动势：$\varepsilon = \int_a^b (\overrightarrow{v} \times \overrightarrow{B}) \cdot d\overrightarrow{l}$。

发电机：$\Phi = BLS \cos \omega t$，$\varepsilon = \omega BLS \sin \omega t$。

### 电感
#### 自感

一圈匝数为$N$，横截面$S$的线圈通过电流$i$时会感应出磁场$B$，则有自感系数$L = \frac{N\Phi}{i}$，单位为亨利（1 Henry = 1 T $\cdot$ m$^2$/A）。

由电磁感应得到自感电动势：$\varepsilon = - \frac{d N \Phi}{dt} = -L \frac{di}{dt}$。

!!! example "例：通电螺线管"
    ![](./assets/gp23.png)

!!! example "例：矩形螺绕环"
    ![](./assets/gp24.png)

???+ LR回路
    开关连接电源：注意利用回路中总电势变化为0即可，这里定义了自感时间常数$\tau = L/R$  
    ![](./assets/gp25.png)  
    开关不连电源：同理，这次类似放电  
    ![](./assets/gp26.png)

功率：$dW=−εdq=−εidt=Lidi$

存储能量：$E = \frac{1}{2} L i^2$

![](./assets/gp29.png)

#### 互感

考虑两个共轴（轴长为$l$）的，匝数分别为$N_1, N_2$的，横截面半径都为$r$的线圈，通过线圈1的电流$i_1$产生的磁通量为$\mu_0 \frac{N_1}{l} i_1 \pi r^2$

则通过线圈2的磁通量为$\Phi_{21} = \mu_0 \frac{N_1 N_2}{l} i_1 \pi r^2$

线圈2产生的互感电动势为$\varepsilon_{21} = -\frac{d\Phi_{21}}{dt} = -\mu_0 \frac{N_1 N_2}{l} \pi r^2 \frac{di_1}{dt}$

将此式写成$\varepsilon_{21} = -M_{21} \frac{di_1}{dt}$，其中$M_{21} = \mu_0 \frac{N_1 N_2}{l} \pi r^2$为互感系数。

同理，可得线圈1产生的互感电动势为$\varepsilon_{12} = -M_{12} \frac{di_2}{dt}$，其中$M_{12} = \mu_0 \frac{N_1 N_2}{l} \pi r^2$。

也就是说，$M_{12} = M_{21} = M$，也就是互感系数。

#### 磁化

通电螺线管中插入铁磁材料，可以使得自感系数增大：$L = k_m L_0$，其中$k_m$被称为磁导率。

原本杂乱无章的分子磁矩会受到磁场的作用，使得磁矩方向趋于一致，朝向磁场方向，在宏观上相当于在材料外围产生了一个电流$i'$

定义磁化强度矢量$M$为单位体积内磁矩矢量和$M = \frac{\Sigma \mu}{V}$

类比电学中的极化，其满足$\int M dl = \Sigma_{in} i'$

![](./assets/gp28.png)

则由环路定理 $\int B dl = \mu_0 \Sigma (i_0 + i') = \mu_0 \Sigma i_0 + \mu_0 \int M dl$

也就是$\int (\frac{B}{\mu_0} - M) dl = \Sigma i_0$

定义磁场强度：$H = \frac{B}{\mu_0} - M$

## 光学

!!! note "notation"
    - $p$：原物体大小
    - $I$：像大小
    - $c$：光速
    - $\lambda'$：波长
    - $\theta_i$：入射角
    - $\theta_r$：反射角
    - $u$：物距
    - $v$：像距
    - $r$：（球面镜）半径

### Intro: 光的本质

- 波动性：$d \sin \theta = m \lambda$，此时相长干涉。
- 粒子性：$\frac{c'}{c} = \frac{p'}{p} = \frac{\lambda'}{\lambda} = \frac{\sin \theta_i}{\sin \theta_r}$（折射时）

- 反射定律：$\theta_i = \theta_r$
- 折射定律：$n_1 \sin \theta_i = n_2 \sin \theta_r$
- 折射率：$n = \frac{c}{v}$

全内反射：$n_1 \sin \theta_c = n_2 \sin 90^\circ$，得到$\sin \theta_c = \frac{n_2}{n_1}$，其中$\theta_c$为临界角，此时折射光线全部消失，只有反射光线。

### 费马原理

简单理解为 $\frac{dt}{dx} = 0$

- 反射定律的证明：

![反射定律](./assets/gp30.png)

- 折射定律证明：

![折射定律](./assets/gp31.png)

!!! note "球面镜反射等式"
    ![球面镜](./assets/gp32.png)

    - 通过焦点的光线反射后平行于平面
    - 平行于平面的光线反射后通过焦点
    - 通过曲率中心（Center of Curvature）的光线原路反射回去
    - 射向平面与球面镜交点的光线满足**反射定律**

!!! note "球面镜折射等式"
    ![球面镜折射](./assets/gp33.png)


!!! example "例子"
    一个物体在物距为$u$处沿轴向一个球面反射镜以$V_0$速度运动，球面镜半径为$R$，求像的运动速度$V$。

    - 由$\frac{1}{u} + \frac{1}{v} = \frac{1}{f} = \frac{2}{R}$，得到$v = \frac{1}{\frac{2}{R} - \frac{1}{u}}$（注意这个是小写$v$是像距！）
    - 于是有$V = \frac{dv}{dt} = \frac{dv}{du} \frac{du}{dt} = - \frac{\frac{1}{u^2}}{(\frac{2}{R} - \frac{1}{u})^2} \frac{du}{dt} = -(\frac{R}{2u-R})^{2} V_0$

### 惠更斯原理

- 波前（Wavefront）：相位相同的点的集合
- 子波（Wavelet）：波前上的每一点都可以看作是一个次波源，次波源发出的波称为子波

可以解释点光源以球面发散，从而解释了光的衍射

!!! definition "prequisite"
    如果光波在介质中传播时，波长为$\lambda$，传播距离为$r$，则其相位等于$\phi = 2 \pi \frac{r}{\lambda}$    
    介质中波长 $\lambda_n = \frac{\lambda}{n}$，期中$n$为介质折射率，于是上式变为$\phi = 2 \pi \frac{nr}{\lambda}$    
    定义光程（Optical Path）：$L = nr$，则有$\phi = \frac{2\pi}{\lambda} L$ （于是$r$为光在介质中传播的几何距离） 

### 干涉（Interference）

两束光 $I_1, I_2$ 相遇，总强度为$I = I_1 + I_2 + 2 <E_1 \cdot E_2>$

- 干涉时，$2 <E_1 \cdot E_2> = 0$
- 不干涉时，$2 <E_1 \cdot E_2> \neq 0$

这三种情况下不干涉：

![不干涉](./assets/gp34.png)

于是得到相干条件：

1. 频率相同
2. 振动方向相同
3. 相位差恒定

!!! example "双缝干涉"
    note：光强与振幅的平方成正比  
    ![双缝干涉](./assets/gp35.png)

#### 半波损失

> Credit to <https://zhuanlan.zhihu.com/p/550675894>

- $\delta = \delta_0 - \frac{\lambda}{2}$
- 当光从光疏到光密质，正入射及掠入射时反射光均有半波损。
- 当光从光密到光疏质，正入射时反射光无半波损（掠入射时发生全反射） 。
- ![半波损失](./assets/gp36.png)

!!! example "例1"
    ![例1](./assets/gp37.png)

## 小测部分

### 第一次小测

[实心带电球体静电能](https://chiichen.github.io/notes/College-Physics/Formula-Derivation/Electrostatic-energy-of-a-solid-charged-sphere.html#_3-%E9%9D%99%E7%94%B5%E8%83%BD)

### 第二次小测

![第二次小测](./assets/GP-22.png)

已知这样的一对非平行极板，求其电容，其中上板横向纵向长度 $a, b$, 上板最低点与下板距离 $d$，最高点与下板距离 $d+h$ 已知，$h<<d$

??? note "解"
    先定义一下上板倾角为 $\theta$，下板横向长为 $x$。则由于 $d$ 很小，倾角趋于0，有近似 $\tan \theta = \sin \theta = \frac{h}{a}$，那么取下板沿 $x$ 方向很小的一截 $dx$，这一截的下板面积是 $bdx$，且近似与上板平行（上板平行重合的这一小截也视作面积是 $bdx$，则由平行极板电容公式 $C = \frac{\epsilon_0 A}{d}$，得到$dC=\frac{\epsilon_0 bdx}{d+\tan \theta x}$  
    直接对 $x$ 从0到 $a$ 积分，  
    得到 $C = \int_0^a \frac{\epsilon_0 bdx}{d+\frac{h}{a} x} = \frac {\epsilon_0 a b}{h} \cdot \ln \frac{h+d}{d}$

