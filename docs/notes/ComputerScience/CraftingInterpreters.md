---
    comments: true
    nostatistics: true
 
---

# Crafting Interpreters
## 导言
## 领域概览
### 扫描/词法分析 Scan/Lex

扫描仪（Scanner）或词法解释器（Lexer）接收一连串线性排列的字符流，将其组合为更像“单词”的东西：词法单元（Token），例如一个逗号`,`，一个字符串`"srkeih"`，一个数字`505`。空格空行这类没有意义的字符会被省略。

### 解析 Parse

类比现实生活中的语言，解析将短小的词法单元组成表达式和语句。

具体而言，解析器（Parser）将上述的线性排布的词法单元爆改成树形结构（以便更好显示语法嵌套的特点），亦即 AST（Abstract Syntax Tree）。语法错误（Syntax Error）就是解析器产生的。

在几乎所有语言的解释中都要经历上面两个步骤，不过接下来差距就变大了。

### 静态分析

TBD

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
