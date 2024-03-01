---
comments: true
---

# CS61A 学习笔记（23Fall）

!!! abstract "课程资源"
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

---

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

---

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

---

## Mutation  

```python
>>> a = [1, 2, 3]
>>> b = a
>>> b
[1, 2, 3]
>>> a.append(4)
>>> a
[1, 2, 3, 4]
>>> b
[1, 2, 3, 4]
```
??? question "What's going on?"
    `a` and `b` are the **same list**. Recalling the POINTER concept in C, they are both pointing at the same memory address.  

Furthermore we have these:
```python
>>> a == b # "==" operator checks if two variables have the same *value*
True
>>> a is b # "is" operator checks if two variables point to the same *memory address*
True
>>> c = a[:] #c is a new list, occupying a different memory address
>>> a == c
True
>>> a is c
False
```
---
### A filter question
```python
def wrong_filter(condition, lst):
    """Filters lst with condition using mutation.
    >>> original_list = [5, -1, 2, 0]
    >>> filter(lambda x: x % 2 == 0, original_list)
    >>> original_list
    [2, 0]
    """
    for elem in lst:
        if not condition(elem):
            lst.remove(elem)

def filter(condition, lst):
    """Filters lst with condition using mutation.
    >>> original_list = [5, -1, 2, 0]
    >>> filter(lambda x: x % 2 == 0, original_list)
    >>> original_list
    [2, 0]
    """
    for elem in lst[:]:
        if not condition(elem):
            lst.remove(elem)
```

Vaguely, Python's 'for' loop is implemented by keeping track of the "index" of a list.  
When the list is mutated, the index is not updated, thus the loop may skip some elements.  
For example:
    
```python
>>> original_list = [5, -1, 2, 0]
>>> f = lambda x: x % 2 == 0
>>> wrong_filter(f, original_list)
>>> original_list
[-1, 2, 0]
```
Here "for" loop checks firstly `original_list[0]`, then `original_list[1]`, and then `original_list[2]`.  
So at first, considers 5, 5 is rid of. Then considers the "[1]" index, which now represents 2 in the list.  
---> -1 is skipped, not checked.

```python
>>> original_list = [5, -1, 2, 0]
>>> filter(f, original_list)
>>> original_list
[2, 0]
```
In the correct version of filter, `lst[:]` creates a new list copy.  
So when the original list is mutated, the loop still checks the original list **copy**, which never changes.  
Thus every element of every location is checked.

---

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

---

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