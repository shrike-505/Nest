---
comments: true
---

# 普通物理学Ⅰ

> 任课教师：路欣

## Solving problems in the view of **vectors**
### Dimension
类似单位，但是以具体的量表述，如$m(米) \rightarrow [length]$,$s(秒) \rightarrow [time]$,$kg(千克) \rightarrow [mass]$  
!!! warning "向量的单位/Dimension"
    向量的单位/Dimension就是其对应标量（module）的单位/Dimension。  
    因此单位向量的Dimension等于一般向量的Dimension除以其module的单位，也就是1  
    [So unit vectors are **dimensionless**.](https://physics.stackexchange.com/questions/172829/is-a-vector-and-a-unit-vector-dimensionless)  

## Work-Kinetic Energy/Momentum Principle
### Conservative Force
保守力：做功大小与路径/过程无关，只与初末位置/状态有关的力，如重力、弹力、电场力。  
保守力的做功等于对应势能的增量，即$W = -\Delta U$
### Center of Mass(CM)
$x_{cm} = \frac{m_1x_1 + m_2x_2 + \cdots + m_nx_n}{m_1 + m_2 + \cdots + m_n}$  
![](Physics11.png)
对于含有大量微粒的系统，其质心由求和转变为积分  
$x_{cm} = \lim_{\Delta m \to 0} \frac{\sum x_i \Delta m_i}{M} = \frac{\int xdm}{M}$

### CM Frame(质心系)
质心系是一个特殊的惯性系，质心系中的物体的总动量为0。质心可视为虚拟的质点。质心的质量为质点系所有质点质量之和。  
$\vec{v}_{cm} = \frac{\sum m_i\vec{v}_i}{\sum m_i}$  
$\vec{a}_{cm} = \frac{\sum m_i\vec{a}_i}{\sum m_i}$

#### 质心动量
质点系总动量等于质心动量，即$\sum m_i\vec{v}_i = (\sum m_i)\frac{\sum m_i\vec{v}_i}{\sum m_i} = (\sum m_i)\vec{v}_{cm}$  
因此质心动量的改变量等于质点系合外力的冲量。

#### 质心动能
柯尼希定理：质点系的动能等于质心动能加上每个质点**相对**质心的动能之和，即$E = E_{cm} + \sum E_{k,i-cm}$

## Rotational Motion
$\tau = I\alpha$  
其中$\tau$为力矩，$I$为转动惯量，$\alpha$为角加速度  
$I = \sum m_i r_i^2$  
即将刚体看作许多质点集合