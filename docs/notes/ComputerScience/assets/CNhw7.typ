#import "@preview/ori:0.2.3": *
#show: ori.with(
  title: "作业7",
  subject: "计算机网络",
  semester: "2025-2026 秋冬学期",
) 
#set enum(numbering: "1.a.i.")

1. Which protocol does not match its well-known port?

  #square("A")

  A. POP3 / 120\
  B. FTP / 21\
  C. Telnet / 23\
  D. SMTP / 25\

2. A file containing popular song is delivered in email, it will be encoded as MIME message and its MIME type/subtype will be #square("A") most possibly.
  
  A. Audio/basic\
  B. MIME/audio\
  C. Message/music\
  D. Message/rfc822\

3. When you configure static IP address parameters: IP address, subnet mask, default gateway, IP address relating to DNS, which name server’s IP address is used?
  
  #square("C")

  A. Proxy name server\
  B. Authoritative name server\
  C. Local name server\
  D. Top-level name server\

4. Assume that all domain name servers use iterative query for domain name resolution. When H4 attempts to access the website www.abc.xyz.com and the domain name resolution is completed, the possible minimum and maximum number of DNS queries issued by the domain name server 201.1.1.1 are #square("C")
  
  A. 0, 3\
  B. 1, 3\
  C. 0, 4\
  D. 1, 4\

5. HTML tag #square("A") can be used to give a URL of the link.

  A. `<a href=…>`\
  B. `<input>`\
  C. `<table>`\
  D. `<li>`\

6. In the following descriptions about HTTP, which one is not correct?
  
  #square("D")
  
  A. HTTP uses TCP as its underlying transport protocol.\
  B. HTTP is a stateless protocol.\
  C. HTTP is client-server architecture.\
  D. HTTP uses non-persistent connections in its default mode.\

7. The popularity of the Web has almost been its undoing. Servers, routers, and lines are frequently overloaded. In order to improving performance of accessing Web pages, we can use following techniques except for #square("B")
  
  A. Caching\
  B. Tunneling\
  C. Server replication\
  D. Content delivery networks\

8. When a user clicks on a hyperlink, http://www.zju.edu.cn/lib/index.html, the browser carries out a series of steps in order to fetch the page pointed to. Which one is not in these steps?
  
  #square("C")

  A. The browser determines the URL\
  B. The browser asks DNS for the IP address of www.zju.edu.cn\
  C. The browser sends a UDP request asking for file /lib/index.html\
  D. The browser displays all the text in index.html\

9. Which is used to keep track of a user and its related information by the Web server?
  
  #square("C")

  A. Web cache\
  B. Persistent connection\
  C. Cookie\
  D. Conditional GET\

10. What are the characteristics, advantages and disadvantages of symmetric key cryptography and asymmetric key cryptography?
  - Symmetric-Key Cryptography
    - Characteristics: Uses the same key for both encryption and decryption.
    - Advantages: Faster encryption and decryption processes; suitable for large data volumes.
    - Disadvantages: Key distribution problem; if the key is compromised, security is lost.
  - Asymmetric-Key Cryptography
    - Characteristics: Uses a pair of keys (public and private) for encryption and decryption.
    - Advantages: Solves the key distribution problem; allows for digital signatures and secure key exchange.
    - Disadvantages: Slower than symmetric key cryptography; computationally intensive.
11. Give examples about passive attacks and active attacks, respectively.
  - Passive Attacks
    - Eavesdropping: Intercepting and reading messages.
    - Traffic Analysis: Monitoring transmission patterns (frequency, length) to deduce information.
  - Active Attacks
    - Denial of Service (DoS): Preventing legitimate access to services.
    - Distributed Denial of Service (DDoS): Overwhelming a system with traffic from multiple zombie sources.
12. Give examples using substitution and transposition encryption algorithm, respectively.
  - Substitution Cipher
    - Caesar Cipher: Each letter in the plaintext is replaced by a letter a fixed number of positions down the alphabet.
  - Transposition Cipher
    - Columnar Transposition: The message is written in rows of a fixed length, and then read out column by column. 