---
comments: true
---

# CS61A 学习笔记（23Fall）

!!! note "课程资源"
    主页: <https://inst.eecs.berkeley.edu/~cs61a/fa23/>  
    教材汉化：<https://composingprograms.netlify.app/>
  
## Function Domain & Local/Global Frame  

1. What will the following code fragment print?

```python
a = 1
def f(g):
    a = 2
    return lambda y: a*g(y)
f(lambda y: a + y)(a)
```

??? "Answer"
    4
  
## Short Circuiting 


> `0`, `None`, `False` stand for "False".Anything other than these stand for "True".  
Python interprets the expression from left to right:  
If `a` is "True", `a or b` is "True" and has value of `a`.(`b` is not considered so it could be anything, even something like `1/0`)  
If `c` is "False", `c and d` is "False" and has value of `c`.Likely, `d` is whatever.  
In other conditions, e.g `x or(and) y`, both arguments are considered and computed, **eventually the value would be that of `y`.**

```python
>>> True and 13
13

>>> False or 0
0

>>> not 10
False

>>> not None
True

>>> 2 and ''
''
```
!!! hint
    Just remember `not <sth>`, `a >(<) b` returns `True` or `False` ( Boolean ), other expressions return themselves.
  
## Higher-Order Function
  
> A wonderful (but painful) example:

```python
>>> # If Python displays <function...>, type Function, if it errors type Error, if it displays nothing type Nothing
>>> def cake():
...    print('beets')
...    def pie():
...        print('sweets')
...        return 'cake'
...    return pie
>>> chocolate = cake() #call cake once, but no return value printed, just binded to chocolate
beets

>>> chocolate
Function

>>> chocolate() #call pie once and print the return value
sweets
'cake'

>>> more_chocolate, more_cake = chocolate(), cake #call pie once, no return,just binded to more_chocolate
sweets

>>> more_chocolate #after the binding step above, now more_chocolate is just an argument with value 'cake', so print 'cake'
'cake'
```

### Function Currying  
  
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
    Firstly `curry2` takes a function `f` as argument (`f` takes 2 arguments), returning a fuction `g`. As for `g`, it defines `h`, which returns an output of `f`, and returns a function h.

```python
mymax = curry2(max)
def comparexwith3(x):
    return x == mymax(x)(3)
```

!!! success
    `mymax` equals to `g` in the definition above, taking 1 argument `x` to transform into another function `h` aka `max(x)`, which also takes 1 argument `y`, thus aka `mymax(x)(y)`  
  
`comparexwith3` returns if `x` is larger than 3.  

```python
python3 -i improve.py
>>> comparexwith3(5)
True
>>> comparexwith3(1)
False
```  
  
## Sequence

### List (Mutable)

> A list is a sequence of values. In a list, the values can be of any type and **need not** be of the same type as each other.

Useful methods & functions on [Dive into Python3](https://diveintopython3.net/native-datatypes.html#lists)

### Tuple (Immutable)

> A tuple is an ordered collection of values, similar to a list. However, it is not possible to add, remove, or modify values in a tuple.(Immutable)

### Dictionary (Mutable)

> Another type of collection, called a dictionary, allows us to store and access values that correspond to given keys.

`dict.keys()` will return a sequence of keys.  
`dict.values()` will return a sequence of values.  
`dict.items()` will return a sequence of key-value tuples.

## Miscellaneous

### Some function/operator details

- `min` and `max`, when there are multiple arguments all have the minimal/maximal value, return the argument which appears first.  
- `in` when used within a dictionary, only considers VALUES.
```python
>>> pokemon = {'pikachu': 25, 'dragonair': 148, 'mew': 151}
>>> 'pikachu' in pokemon
True
>>> 25 in pokemon
False
>>> 25 in pokemon.values()
True
```