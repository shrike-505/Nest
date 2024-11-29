---
    comments: true
 
---

# Java

## OOP

每个类都有构造方法。如果没有显式地为类定义构造方法，Java 编译器将会为该类提供一个默认构造方法。

在创建一个对象的时候，至少要调用一个构造方法。构造方法的名称必须与类同名，一个类可以有多个构造方法。

类似 Python 的 `__init__`

```java
public class Puppy {
    public Puppy() {
    }
    public Puppy(String name) {
    }
}
```