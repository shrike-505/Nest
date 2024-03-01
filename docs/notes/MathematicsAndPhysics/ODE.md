---
comments: true
---

# 常微分方程

> 任课教师：王伟

!!! note "UsefulLinks"
    [Cheatsheet by Xecades](https://note.xecades.xyz/math/ma/cheatsheet/)  
    [jhc学长的笔记](https://github.com/16-39/Mathematics/blob/main/ODE%20review.pdf)

!!! abstract "成绩组成"
    - 平时成绩：50%，包括作业30%和小测20%
    - 期末考试：50%

## 基本概念
含有**未知数、所求的未知函数、未知函数的导数**的方程，称为微分方程。  
最高阶导数的阶数称为微分方程的阶数。  

n阶微分方程的一般形式：$F(x, y, y', y'', \cdots, y^{(n)}) = 0$  

- 其中$y^{(n)}$必须出现，其他变量不要求。如 $y^{(n)} = 1$  

使微分方程成为恒等式的$y = y(x)$称为微分方程的解，这就是定义中的“未知函数”。  
若解中含有任意常数且常数的个数与方程阶数相等，则称为微分方程的通解，不含有常数则为特解。  

为了求解方程的特解，需要提供一些初始条件，如$y(x_0) = y_0, y'(x_0) = y_0'$等。  

## 一阶ode
一般形式：$f(x, y) = \frac{dy}{dx}$  
### 可分离变量的ode解法
即可化为$\frac{dy}{dx} = \varphi (x)\psi (y)$的形式。  
解法：分离变量，两边积分。  

??? 例
    - 求解$\frac{dy}{dx} = 2xy$  
        - 分离变量，得$\frac{dy}{y} = 2xdx$  
        - 两边积分，得$\ln |y| = x^2 + C$  
        - 代回$x$,$y$,得$y = Ce^{x^2}$
    - 求解略复杂的可分离形式的ode:$\frac{dy}{dx} = \sin ^2 (x-y+1)$  
        - (想办法取出sin中的东西)令$u=x-y+1$,则$\frac{du}{dx} = 1-\frac{dy}{dx}$  
        - 代入原式，得$\frac{du}{dx} = 1 - \sin ^2 u = \cos ^2 u$  
        - 分离变量，得$\frac{du}{\cos ^2 u} = dx$
        - 两边积分，得$\tan u = x + C$
        - 代回$x$,$y$,得$\tan (x-y+1) = x + C$  

### 齐次ode解法
即可由一般形式化为$\frac{dy}{dx} = \varphi (\frac{y}{x})$的形式。 
只要注意到等号两侧$y$与$x$的次数相同，就可以尝试变形后用$u = \frac{y}{x}或\frac{x}{y}$的形式进行变换。

解法：令$y = ux$,则$\frac{dy}{dx} = u + x\frac{du}{dx}$，再代入原方程。  

??? 例
    - 求解齐次ode:$(y^2-2xy)dx+x^{2}dy=0$（注意$x$,$y$的次数相同）  
        - 先变形，得$\frac{dy}{dx} = 2\frac{y}{x} - (\frac{y}{x})^2$
        - 令$u = \frac{y}{x}$,则$y = ux$,$\frac{dy}{dx} = u + x\frac{du}{dx}$  
        - 代入原方程，得$u + x\frac{du}{dx} = 2u - u^2$
        - 分离变量，得$\frac{du}{u(1-u)} = \frac{dx}{x}$
        - 两边积分，得$\ln |u| - \ln |1-u| = \ln |x| + C$