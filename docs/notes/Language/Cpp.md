---
    comments: true
    tags:
        - 大二下笔记
---

# 面向对象程序设计

> 任课教师：许威威

!!! note "Links"
    <https://tree.45gfg9.net/lcppthw/construct/>

## Lec1

c(onstruc)tor: 构造函数，函数名和类名相同

## Lec2

![](./assets/oop1.png)

- 全局变量（Global Variable）：定义在函数外部的变量，使用 `extern` 关键字可以使用其他文件中定义的全局变量
    - 静态全局变量（Static Global Variable）：只能在当前文件中使用
- 局部变量（Local Variable）：定义在函数内部的变量，只能在函数内部使用
    - 静态局部变量（Static Local Variable）：其值在函数调用结束后不会改变，下次调用时仍然可以使用

### Pointer

```c++
std::string s;
```

创造了一个 `string` 类型的对象，调用了构造函数

```c++
std::string *p;
```

创造了一个指向 `string` 类型的指针，指向的 `string` 对象还没有被创建

### 动态分配内存

C++ uses `new` and `delete`

```c++
new <class_name>;
int* p = new int [10];
delete [] p;
```

返回申请内存的首地址（因此一般赋值给一个指针）（？）。和 `malloc` 不同的是，`new` 是创建了一个对象的实例，因此调用了其构造函数（`delete` 时也调用析构函数）

`a = new int [10]; delete [] a;` 释放 10 个 `int` 类型的内存，`delete a` 只释放一个 `int` 类型的内存

不同于 `free(NULL)`，`delete` 一个空指针是安全的

### Reference

```c++
char c;
char &r = c; // 并非取地址
```

Ref 定义时必须赋初值，且引用的对象不再改变（即后面如果出现给 `r` 赋值的操作，实际上是给 `c` 赋值）

- 不能 Ref Ref
- 不能存在指向 Ref 的指针（`char& *p // illegal`）
    - 可以有引用指针的 Ref（`char* &p // ok`）
- 没有 Ref 数组

### const

不允许修改

```c++
const int a = 10;
a = 20; // illegal
```

- Compile-time const: `const int a = 10;`，在编译时就确定了（是 symbol 的 entry）
- Run-time const: `cin >> x; const int a = x;`，在运行时才确定，例如接受用户输入

!!! note "Aggregates"
    `const int a[] = {1, 2, 3}; float f(a[1]);` 会报错，因为编译器在编译时不会深究 const 数组内部的东西


!!! note "Pointers"
    - `char * const q = "hello";` 指针 q 是 const，于是 `q++` 会报错，但是 `*q = 'x'` 不会
        - `char const* q` 大概率同理（可能因为不同编译器解释不同）
    - `const char* p = "hello";` `*p` 是一个 const char，于是 `*p = 'x'` 会报错

```c++
struct S {
  void f() { std::cout << "non-const\n"; }
  void f() const { std::cout << "const\n"; }
};

int main() {
  S a;
  const S b;

  a.f(); // non-const
  b.f(); // const

  const S *ps = &b;
  ps->f(); // const
}
// <https://tree.45gfg9.net/lcppthw/construct/#const>
```

`const` 成员函数影响 `this` 的类型


### Stash

- Typeless container
- 存储相同类型的对象
- 使用类型的大小初始化

### Deconstructor

当对象 Go out of scope 时，调用析构函数

!!! note "Initialization vs. assignment"
    - `Student::Student(string n) { name = n;}` : Assignment(Inside Constructor)
    - `Student::Student(string n) : name(n) {}` : Initialization(Before Constructor)

## Lec3

### Static

已知：当 static 修饰全局变量时，限制该变量的作用域为当前文件；当 static 修饰局部变量时，表示该变量的生命周期为整个程序运行期间。

static 还可以修饰成员变量，静态成员变量/函数由整个 Class 共享，非静态成员变量/函数由每个对象拥有，且静态成员变量必须在类外部被定义一次（类内部的 `static <type> <name>;` 只是声明）

```c++
struct rectangle {
  static int count;
  double width;
  double height;

  rectangle(double w, double h) : width {w}, height {h} {
    count++;
  }

  ~rectangle() {
    this->count--;
  }
};
int rectangle::count = 0; // must!

int main() {
  rectangle c1 {3, 4};
  std::cout << rectangle::count << "\n"; // 1
  rectangle c2 {5, 6};
  std::cout << c2.count << "\n"; // 2
}
// <https://tree.45gfg9.net/lcppthw/construct/#static>
```

### 拷贝构造函数

声明长这样：`T::T(const T& t);`

C++ 会提供一个默认的拷贝构造函数，拷贝对象的每个成员变量（memberwise copy），但是如果成员变量是指针类型，则只会拷贝指针的值（即地址），而不是指针所指向的内容
– Copies each member variable
    - Good for numbers, objects, arrays
– Copies each pointer
    - Data may become shared!

拷贝函数何时被调用？

- 在对象被 call by value 时，例如被传入函数参数时
- 在被赋值为另一个对象时
    - `T t2; T t1 = t2;`
- 在返回对象时，例如 `T rtsomething(){T t1("1"); return t1;} T whoami = rtsomething();`

### namespace

命名空间就是“更高级层面的”隔离，包含逻辑上的一组类、函数、变量

```c++
// Mylib.h
namespace MyLib {
    void foo();
    class Cat {
    public:
        void Meow();
    };
}
```

用 using namespace \<name\> 可以引入命名空间中的所有内容，但是可能导致命名冲突

可以用 `nameplace short = WhatALongNameplaceName;` 来 alias 一个很长的命名空间

!!! note "Nameplace Composition"
    用于合并命名空间，还可以解决命名冲突。

    ```c++
    namespace first { 
      void x(); 
      void y(); 
    } 
    namespace second { 
      void y(); 
      void z(); 
    }
    
    nameplace Mine {
        using namespace first;
        using namespace second;
        using first::y(); // 解决命名冲突
        ...
    }
    ```

可以在多个文件里给同一个命名空间添加内容

```c++
// lib1.h
namespace X {
    void foo();
}

// lib2.h
namespace X {
    void bar();
}

// 于是 X 有两个函数了
```