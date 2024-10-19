# Data Analysis and Machine Learning

!!! note "Overview"
    国际化拔尖人才培养课程：数据分析与机器学习。  
    "Eighty percent will be course lessons, and twenty percent will be life lessons."  -- Raja Sooriamurthi


## Lec 1: Introduction

Real World Problem Solving (From abstract world to real world):

1. Puzzled-Based Learning: Domain Independent, Logical Reasoning
2. System-based Learning: Reasoning with domain-specific methods (Learn physics knowledge to solve physics problems, etc.)
3. Project-based Learning: Working with teams, Dealing with uncertainty

例如，问题要求计算$100!$，重要的不是答案，而是计算过程。例如说，可以立刻确定结果末尾有两个零，由100带来的。（好难绷的例子）

> Learing occurs when someone wants to learn, not when someone wants to teach.  -- Roger Schank

### Information System

Class Core, Ultimate Goal: Info System is all about **adding value** to organizations and ~~use technology~~.

Machine Learning永远不会孤立存在，一般发生于某种business context下，用于添加value，例如说医院预测预约者失约的概率。（个人理解：强调实际用途？）因此面对ML问题，从value的角度思考。

![](DAML1.png)

如图，从数据中提取Value的过程，其中Visualize（可视化）代表Data Analysis，Modeling（建模）代表Machine Learning。

### Use of Data

Visualization and Prediction.

Process when solving a problem:

- Consider whether the problem is worth solving
- Invention: WHAT CAN I DO?

### Tools
![](DAML2.png)

~~"Matplotlib is too low-level"~~

### Machine Learning
Learning: Improvement.

!!! example "eg"
    - Recommendation System: Netflix
    - Association: People who read this book also read...
    - Email spam classification

## Lec2: Computational Thinking & Tidy Data

> If there is no action, there is no value.

### 计算思维

四个方面：

- Decomposition: Divide and Conquer
- Abstraction: Separate the "What" from the "How"
- Recognition: Look for similarities between problems
- Generalization: Adapt previous solutions to new problems
- Computation: How to express solution unambiguously

### Abstraction

~~CS61A讲过了（~~

> This is the approach of stratified design, the notion that a complex system should be structured as a sequence of levels that are described using a sequence of languages.   -- Abelson and Sussman

即复杂的系统在设计/阐述时应该被分层，每一层用不同的语言描述。

e.g. Internet的七层结构，Git分为Porcelain（面向用户）和Plumbing（Core Git）两层。

### EFFECTIVE VISUALIZATION

Tidy Data: 数据的组织格式，使得数据更容易被处理。（例如用表格）

!!! note "e.g."
    即便是表格也有messy的，如下图，蓝色表格对人类来说是更可读的，而绿色（Tidy Ver.）对计算机更友好。  
    ![](DAML3.png)


Data Analysis中注意的三个属性：

- Variable: 和编程语言中的变量不同，这里指的是**可以被测量的性质或量**
- Value: 某个时刻测量Variable的结果
- Observation:  The values of several variables measured under similar conditions.

### RESHAPING DATAFRAMES

+ Column headers are values, not variable names 