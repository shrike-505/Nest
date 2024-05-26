---
comments: true
tags: 
    - 大一下
---

# 嵌入式人工智能精品课

## AI model
回归模型：$\hat{y} = ax + b$
loss = $\sum (y - \hat{y})^2$

图像分类: $Softmax(x_k) = \frac{e^{x_k}}{\sum_{j=1}^{k} e^{x_j}}$  
$t_1 = a_1 * x_1 + a_2 * x_2$  
$t_2 = a_3 * x_1 + a_4 * x_2$  
$y_1 = Softmax(t_1)$  
$y_2 = Softmax(t_2)$

loss = $-\sum_{i=1}^{n} y_i log(\hat{y_i})$

## Machine Learning
- 数据集
- 参数
- 模型
- 损失函数

## 卷积
<https://www.bilibili.com/video/BV1Vd4y1e7pj/>

## 嵌入式
MCU(Micro Controller Unit)（微控制器）：集成了CPU、内存、外设、时钟等功能的芯片。