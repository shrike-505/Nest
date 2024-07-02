---
    comments: true
    nostatistics: true
---

::cards::

- title: PampasEagle
  content: Quadratic Reciprocity.
  image: img/Pampaseagle.jpg
  url: https://pampaseagle1.github.io/

- title: memset0
  content: mem 的小站
  image: img/mem0.png
  url: https://mem.ac/

- title: Amane Suzuha
  content: 一切都是命运石之门的选择
  image: img/dgzs.jpg
  url: https://zjyinzju.github.io/

- title: Kailqq
  content: Man!
  image: img/kailqq.jpg
  url: https://www.kailqq.cc/

::/cards::

???+ quote "友链样式"
    使用[neoteroi.cards](https://www.neoteroi.dev/mkdocs-plugins/cards)插件生成  
    ```bash
    pip install neoteroi-mkdocs
    ```
    官方文档讲的不是很详细，需要把他仓库里的scss文件拉到本地用[sass](https://sass-lang.com/install/)编译成css再引用  
    可以到我的仓库里下载编译好的[css文件](css/cards.css)，再引用：
    ```yaml
    markdown_extensions:
      - neoteroi.cards
    extra_css:
      - css/cards.css
    ```