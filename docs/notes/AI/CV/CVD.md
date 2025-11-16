---
    comments: true
    tags: 
        - 大三上笔记
---

# 计算机视觉导论

> 任课教师：周晓巍  
> Reference: Umich EECS 498/598 Deep Learning for Computer Vision

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

## 03. Image Processing

Convolution: $(f * g)(x) = \int_{-\infty}^{\infty} f(t) g(x - t) dt$

- f(t): conv kernel
- g(x - t): signal
- (f * g)(x): output signal

### Blurring

- 通过卷积实现图像模糊
    - Box filter: 卷积核全为1
    - Gaussian filter: 卷积核为高斯分布

### Sharpening

实质是 adding high frequencies

- Low Frequency：Blur(I)
- High Frequency：I - Blur(I)
- Sharpened Image：I + α(I - Blur(I))，α 控制锐化程度

### Gradient detection filter

$\begin{bmatrix} -1 & 0 & 1 \\ -2 & 0 & 2 \\ -1 & 0 & 1 \end{bmatrix}$：提取水平方向的 Gradient

$\begin{bmatrix} -1 & -2 & -1 \\ 0 & 0 & 0 \\ 1 & 2 & 1 \end{bmatrix}$：提取垂直方向的 Gradient

Bilateral filter：在保持边缘的同时进行模糊

### Image Sampling

TBD

## 04. Model fitting & Optimization


### Optimization

$\textbf{minimize} \quad f_0(x)$（objective function）

$\textbf{subject to} \quad f_i(x) \leq 0, i = 1, ..., m; \quad g_i(x) = 0, i = 1, ..., p$（前者称为不等式约束，后者称为等式约束）

!!! example "Image Deblurring"
    模糊图像的还原可看作追求 $\min_X \|Y - FX\|^2$，其中 $Y$ 是模糊图像，$X$ 是清晰图像，$F$ 是模糊 kernel


### Model Fitting

A mathematical model $𝑏 = 𝑓_𝑥(𝑎)$ describes the relationship between input 𝑎 and output 𝑏, where x is model parameter。如线性模型 $b = a^T x$。

需要找到最优参数 $x^*$（即从 data 中学习参数），经典的方法是使 **均方误差（MSE, Mean Squared Error）** 最小化：$\hat{x} = \arg\min_x \sum_{i=1}^n (b_i - f_x(a_i))^2$

## 0?. Structure from Motion (SfM)

sfm 是通过一系列不同角度拍摄的照片，计算3d模型上每个点的坐标（构成点云），从而重建其3d建模和相机的参数

需要处理三个问题：

- 三维坐标怎么映射到照片的二维坐标（camera model）

- 怎么在世界坐标系中计算相机的位置与朝向（camera calibration & pose estimation）

- 怎么重建3d点云（sfm）

相机本身的坐标系（相机坐标系），xy轴位于相机屏幕平面，z轴正方向为相机的orientation

照片的生成：世界坐标系中的坐标转换到相机坐标系下（coordinate transformation），再投影到二维平面下（perspective projection），二维平面的坐标转化为像素（image plane to image sensor）

外参（位置和朝向）矩阵处理coordinate trans，内参（分辨率，焦距等）矩阵处理后面两个过程

外参：placement，orientation

coor trans：xc=Rxw+t use homogeneous coordinates

外参矩阵

perspective projection：xc-＞xi

im2im：内参矩阵

decompose projection matrix

视觉标定问题

假定内参一直求相机外参，perspectiveNpoint

minimize reprojection error

epipolar geometry

## 08. Depth Estimation & 3D Reconstruction

稠密的三维重建

Depth：目标点到相机平面的距离；有很多应用：避障、人脸识别

- A主动发射信号到环境中，通过接收反射信号计算距离，如雷达