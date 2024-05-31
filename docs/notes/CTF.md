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

md5:
```python
import hashlib
def md5_encrypt(data):
    md5 = hashlib.md5()
    md5.update(data.encode('utf-8'))
    return md5.hexdigest()
```

### python socket 网络编程  
```python
import socket

HOST = "IP Address"  # IP address
PORT = PORTNUMBER   # Port number

s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)   # create socket

s.connect((HOST, PORT)) # connect to server
```
然后使用 `s.send(MESSAGE)` 和 `s.recv(MESSAGE)` 进行数据传输，返回为bytes类型。