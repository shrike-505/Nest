---
    comments: true
    tags:
        - 大一下
 
---

# CTF101
> 拼搏百天，我要成为安全领域大神！

!!! note "课程网站 & Useful links"
    https://hello-ctf.com/  
    https://courses.zjusec.com/


## Misc
### 解码工具
```bash
ciphey -t TEXT  
ciphey -f FILE
```
隐写判断（样板戏轮流上）:

- winhex/010editor #查看文件编码
- exiftool FILE #看exif信息
- strings FILE
- binwalk -e FILE
- stegsolve.jar
- foremost FILE
- zsteg -a FILE (png or bmp)
- steghide extract -sf FILE (jpg) -p PASSWORD 
- python \lsb.py extract file.png
- [stegdetect](https://blog.csdn.net/weixin_43921596/article/details/86654754)

### md5
```python
import hashlib
def md5_encrypt(data):
    md5 = hashlib.md5()
    md5.update(data.encode('utf-8'))
    return md5.hexdigest()
```

### Base家族
### python socket 网络编程  
```python
import socket

HOST = "IP Address"  # IP address
PORT = PORTNUMBER   # Port number

s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)   # create socket

s.connect((HOST, PORT)) # connect to server
```
然后使用 `s.send(MESSAGE)` 和 `s.recv(MESSAGE)` 进行数据传输，返回为bytes类型。

## 杂项
!!! extra "Overviews"
    记录一些做题时碰到的小技巧/知识

用vim写文件的时候，会自动在当前文件下生成一个`.<filename>.swp`（存有编辑信息，相当于实时备份），如果有意外退出的情况就不怕没保存了。正常`:wq`就会把这个临时文件删除。~~你们vim真是太安全了~~    
再次打开vim时使用`vim -r <filename>`就可以把临时文件恢复为原文件。

Linux安装：

- .deb: `sudo dpkg -i <package>.deb`
- .tar.gz: `tar -zxvf <package>.tar.gz` -> `./configure` -> `sudo make` -> `make install`