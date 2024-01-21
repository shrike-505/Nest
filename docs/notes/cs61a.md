# CS61A 学习笔记（23Fall）

!!! note 课程资源
    主页: <https://inst.eecs.berkeley.edu/~cs61a/fa23/>
    教材汉化：<https://composingprograms.netlify.app/>

## Function Currying  
  
> **Curry** : transforming a function that takes **multiple arguments** into a function that takes **a single argument** and returns another function that takes the next argument, and so on, until all arguments have been supplied.  

``` python
def curry2(f):
    def g(x):
        def h(y):
            return f(x,y)
        return h
    return g
```

!!! Question
    Firstly $curry2$ takes a function $f$ as argument ($f$ takes 2 arguments),returning a fuction $g$.As for $g$,it defines $h$,which returns an output of $f$,and returns a function h.

```python
mymax = curry2(max)
def comparexwith3(x):
    return x == mymax(x)(3)
```

!!! success
    $mymax$ equals to $g$ in the definition above,taking 1 argument $x$ to transform into another function $h$ aka $max(x)$,which also takes 1 argument $y$,thus aka $mymax(x)(y)$  
  
$comparexwith3$ returns if $x$ is larger than 3.  

```python
python3 -i improve.py
>>> comparexwith3(5)
True
>>> comparexwith3(1)
False
```  
  
## Function Domain & Local/Global Frame  

1. What will the following code fragment print?

```python
a = 1
def f(g):
    a = 2
    return lambda y: a*g(y)
f(lambda y: a + y)(a)
```

<details>
<summary>Answer</summary>

4
</details>