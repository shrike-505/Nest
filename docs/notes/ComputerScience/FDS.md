---
comments: true
tags: 
    - 大一下
---

# 数据结构基础

> 任课教师：陈超超

!!! 课程内容
    - 结构
      - 线性结构
      - 树
      - 图
      - 栈与队列
    - 算法
      - 排序
      - Hash 

多看前人智慧

- Q神:https://note.hobbitqia.cc/ds/algorithm/  
- Tonycrane:https://note.tonycrane.cc/cs/algorithm/ds/  

## 树
```C++
class TreeNode {
    int val;
    *TreeNode left;
    *TreeNode right;
}
```

- Inorder:左根右
- Preorder:根左右
- Postorder:左右根

```C
//用数列模拟树：注意到中序遍历二叉搜索树即得到递增数列，于是让中序遍历的操作变为对数组赋值
void build(int n){
    if (n > N) return;
    else {
        build(n * 2);
        tree[n] = nodes[pos++];
        build(n * 2 + 1);
    }
    //此时tree数组递增
}
```

## 堆/优先队列（很神奇的一种结构）
```C++
class Heap {
    int[] data;//线性存储堆的元素
    int size;//堆中元素个数
    int capacity;//堆的容量
}
```
最大树：根节点最大，所有子节点小于其父节点  
最小树：根节点最小，所有子节点大于其父节点  
完全二叉树：除了最后一层，其他层都是满的，最后一层从左到右排列（不一定排满）  
堆就是完全二叉树，且所有节点被存储在线性结构中，并且满足堆的性质：最大堆（树）或最小堆（树），一般Heap[0]存放哨兵  
    - 注意完全二叉树不等同于满二叉树，后者要求所有叶子节点都在同一层

由于堆是完全二叉树，所以深度为$h$的堆节点个数在$2^h$到$2^{h+1}-1$之间，所以堆的高度为$\lfloor \log_2(N) \rfloor$  
下标为$i$的节点的父节点为$\lfloor i/2 \rfloor$，左子节点为$2i$，右子节点为$2i+1$

### 操作
- 插入：插入到最后，然后和父节点比较，直到满足堆的性质
- 删除最小元：删除根节点，将最后一个节点放到空位，和两个子节点比较，和大于其/小于其的子节点交换，直到满足堆的性质

## 图
挺抽象的这块，FDS离散各讲了一遍还是没咋懂
### Dijkstra
核心代码差不多长下面这样（梗来源：FDS Project 3）  

```c
void Dijkstra(int source){
    for (int i = 0; i < MAX_VERTICES; i++) {
        vis[i] = 0; // initialize all vertices as not visited
    }
    for (int i = 0; i < MAX_VERTICES; i++) {
        dist[i] = INF; // initialize the distance of all vertices as INF
    }
    dist[source] = 0;
    for(int i = 1; i<=nVertices; i++){
        int minDis = INF; // initialize the minimum distance as INF
        int minVertex = -1; // initialize the vertex with the minimum distance as -1
        for(int j = 1; j<=nVertices; j++){
            if(!vis[j] && dist[j] < minDis){
                minVertex = j; // find the vertex with the minimum distance
                minDis = dist[j];
            }
        }
        if(minVertex == -1){
            break; // no vertex is found, break the loop, end the algorithm
        }
        vis[minVertex] = 1;
        for(int j = 1; j<=nVertices; j++){
            if(!vis[j] && graph[minVertex][j] < INF && dist[minVertex] + graph[minVertex][j] < dist[j]){
                // if some vertex is not visited and the distance from the source to the vertex is shorter than the current distance
                dist[j] = dist[minVertex] + graph[minVertex][j]; 
                // update the distance
            }
        }
    }

}
```
执行算法后得到的`dist[i]`就是从源点到i号端点的最短距离

## 排序
### 堆排序
```
func Heapsort(array, N){
    BuildHeap(H)
    for i in (0,N):
        TmpH[i]=DeleteMin(H)
    for i in (0,N):
        H[i] = TmpH[i]
}
```

## Hash
速通了：https://www.hello-algo.com/chapter_hashing/