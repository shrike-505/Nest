#set text(font:"LXGW WenKai")
= 计算机系统Ⅲ 作业1

For a direct-mapped cache design with a 64-bit address, the following bits of the address are used to access the cache.

#align(center)[#table(columns: 3)[Tag][Index][Offset][63-10][9-5][4-0]]

- (1) What is the cache block size (in words)?
  - Offset bits: 5
  - Block size = 2^5 = 32 bytes = 8 words
- (2) How many blocks does the cache have?
  - Index bits: 5
  - \#blocks = 2^5 = 32
- (3) What is the ratio between total bits required for such a cache implementation over the data storage bits?
// 考虑每个缓存块除了数据之外还需要存储Tag和有效位等
  - Tags occupy 54 bits (63-10)
  - Data storage bits = 32^5 = 256 bits
  - Total bits = 256 + 54 = 310 bits
  - Ratio = 310/256 = 1.21

Beginning from the power on, the following byte-addressed cache references are recorded.

#image("./Sys40.png")

- (1) For each reference, list 
  - i) its tag, index, and offset, 
  - ii) whether it is a hit or a miss 
  - iii) which bytes were replaced (if any).
    - tag: 0 index: 0 offset: 0 miss 0\~0x1F
    - tag: 0 index: 0 offset: 0b100 hit 
    - tag: 0 index: 0 offset: 0b10000 hit 
    - tag: 0 index: 0b100 offset: 0b00100 miss 0x80\~0x9F
    - tag: 0 index: 0b111 offset: 0b01000 miss 0xE0\~0xFF
    - tag: 0 index: 0b101 offset: 0 miss 0xA0\~0xBF
    - tag: 0b1 index: 0 offset: 0 miss 0x400\~0x41F
    - tag: 0 index: 0 offset: 0b11110 miss 0\~0x1F
    - tag: 0 index: 0b100 offset: 0b01100 hit
    - tag: 0b11 index: 0 offset: 0b11100 miss 0xC00\~0xC1F
    - tag: 0 index: 0b101 offset: 0b10100 hit
    - tag:0b10 index:0b100 offset: 0b00100 miss 0x880\~0x89F
- (2) What is the hit ratio
    - 4/12 = 0.33