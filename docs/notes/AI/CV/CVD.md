---
    comments: true
    tags: 
        - 大三上笔记
---

# 计算机视觉导论

> 任课教师：周晓巍

## 01. intro

- CV Tasks
    - 3D 重建（元素定位、SLAM）
    - 图像理解
    - 图像合成

## 02. Review of Linear Algebra & Image Formation

向量&矩阵复习：我去，这不是我们最喜欢的线性代数吗

Each Matrix can be regarded as a geometric transformation

仿射变换 = 线性变换 + 平移，Using homogeneous coordinates：$(x', y', 1)^T = \begin{bmatrix} a & b & tx \\ c & d & ty \\ 0 & 0 & 1 \end{bmatrix} (x, y, 1)^T$

特征值的几何含义：对特征向量进行矩阵形式的线性变换后，方向不变，长度变为原来的 $\lambda$ 倍

### Camera & Lens

试着设计一个相机

idea1：直接将一片可以接收物体反射光的薄膜放在物体前面：物体上任意一点的光都会照到薄膜的每一处，导致并不是 one-to-one 接受光线

于是 idea2：在薄膜前面加一个小孔（aperture），只允许通过小孔的光线照到薄膜上

但是小孔并不是越小越好：会导致通过的光线太少了，且还有衍射现象

!!! note "FOV"
    ![FOV](../assets/CVD1.png)

Aperture 的尺寸由镜片的直径刻画，记为 $D$

一种更好的描述方式是 f-number：$N = f/D$，其中 $f$ 是焦距，即镜片焦距与直径的比值

### Geometric image formation

![pinhole](../assets/CVD2.png)