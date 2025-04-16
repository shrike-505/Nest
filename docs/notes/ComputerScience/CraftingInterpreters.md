---
    comments: true
---

# Crafting Interpreters

## 导言

## 领域概览

### 扫描/词法分析 Scan/Lex

扫描仪（Scanner）或词法解释器（Lexer）接收一连串线性排列的字符流，将其组合为更像“单词”的东西：词法单元（Token），例如一个逗号`,`，一个字符串`"srkeih"`，一个数字`505`。空格空行这类没有意义的字符会被省略。

### 解析 Parse

类比现实生活中的语言，解析将短小的词法单元组成表达式和语句。

具体而言，解析器（Parser）将上述的线性排布的词法单元爆改成树形结构（以便更好显示语法嵌套的特点），亦即 AST（Abstract Syntax Tree）。语法错误（Syntax Error）就是解析器产生的。



![](./assets/CAI1.png)



在几乎所有语言的解释中都要经历上面两个步骤，不过接下来差距就变大了。

### 静态分析 Analysis

对于`a`这个 Token，我们不知道它指的是什么变量（局部/全局，在哪里被定义），于是要通过**绑定**（binding，或**解析**resolution）找到定义它的地方，也就是 scope 作用域。

> 如果语言是静态类型的，这时我们就进行类型检查。一旦我们知道了`a`和`b`的声明位置，我们也可以弄清楚它们的类型。然后如果这些类型不支持互相累加，我们就会报告一个**类型错误**。

经过分析，成功解析了文本中所有的语义信息（Semantic info），需要把它们存储在一个地方，例如以下三处

- AST 节点上的属性（Attribute）
- 外部表（亦即符号表，Symbol Table）
- 将树转为另一种数据结构

### 中间表达式 Intermediate Representation

简单理解：在源代码到二进制程序码中间的过渡性代码就是中间表达式。

共同 IR 的存在使为不同架构编写编译器舒服很多，只需要编写每个架构 -> IR 的一段，还有 IR -> 程序码的一段。

### 优化 Optimize

优化就是用**相同语义**但效率更高的程序段代替原程序段。例如常量折叠：`a = 1+2`可以在编译器里就被计算，从而得到表达式`a=3`

### 生成代码 Code Gen

> 我们需要做一个决定。 我们是为真实CPU还是虚拟CPU生成指令？ 如果我们生成真实的机器代码，则会得到一个可执行文件，操作系统可以将其直接加载到芯片上。 原生代码快如闪电，但生成它需要大量工作。 当今的体系结构包含大量指令，复杂的管线和足够塞满一架747行李舱的历史包袱。

于是 portable code 出现了，迄今也被称为字节码（Bytecode）。他们不是为真正的芯片编写指令，而是为一个假设的、理想化的机器编写的代码。

### 运行时 Runtime

## 练习题部分

### 1.5

1. 在我编写的这个小系统中，至少有六种特定领域语言（DSL），它们是什么？

   - Makefile, Lua, CPython, PHP, JavaScript...没了？

2. 使用Java编写并运行一个“Hello, world!”程序，设置你需要的makefile或IDE项目使其正常工作。如果您有调试器，请先熟悉一下，并在程序运行时对代码逐步调试。

   - ```java
       public class HelloWorld {
           public static void main(String[] args) {
               System.out.println("Hello, world!");
           } 
       }
     ```
   - ```bash
       javac HelloWorld.java # 编译形成.class文件
       java HelloWorld # 运行
     ```

3. 对C也进行同样的操作。为了练习使用指针，可以定义一个堆分配字符串的双向链表。编写函数以插入，查找和删除其中的项目。 测试编写的函数。

   - ```c
       // Hello World omitted
       struct Node {
           int *data;
           struct Node *prev;
           struct Node *next;
       };
       struct Node *head = NULL;
       struct Node *tail = NULL;
       typedef struct Node* NodePtr;
       void insert(int *data) {
           NodePtr newNode = (NodePtr)malloc(sizeof(struct Node));
           newNode->data = data;
           newNode->prev = NULL;
           newNode->next = NULL;
           if (head == NULL) {
               head = newNode;
               tail = newNode;
           } else {
               tail->next = newNode;
               newNode->prev = tail;
               tail = newNode;
           }
       }
       NodePtr find(int *data) {
           NodePtr current = head;
           while (current != NULL) {
               if (*(current->data) == *data) {
                   return current;
               }
               current = current->next;
           }
           return NULL;
       }
       void delete(int *data) {
           NodePtr current = find(data);
           if (current == NULL) {
               return;
           }
           if (current->prev == NULL) {
               head = current->next;
           } else {
               current->prev->next = current->next;
           }
           if (current->next == NULL) {
               tail = current->prev;
           } else {
               current->next->prev = current->prev;
           }
           free(current);
       }
     ```
