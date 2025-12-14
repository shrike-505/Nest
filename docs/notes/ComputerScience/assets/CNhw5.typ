#import "@preview/ori:0.2.3": *
#show: ori.with(
    title: "作业5",
    subject: "计算机网络",
    semester: "2025-2026 秋冬学期",
) 
#set enum(numbering: "1.a.i.")

1. When binary exponential backoff is used, a number between 0 and $2^i -1$ is chosen and that number of slots is skipped.
2. A group of N stations share a 56-kbps pure ALOHA channel. Each station outputs a 1000-bit frame on an average of once every 100 sec, even if the previous one has not yet been sent (e.g., the stations can buffer outgoing frames). What is the maximum value of N?
    
    *Answer:*

    Pure ALOHA channel capacity is $S = G e^{-2G}$. The maximum throughput occurs at $G = 0.5$, where $S_{max} = 1/(2e) approx 0.184$.\
    Channel data rate $R = 56 "kbps"$.\
    Usable bandwidth = $0.184 times 56 "kbps" approx 10.3 "kbps"$.\
    Each station requires: $1000 "bits" / 100 "sec" = 10 "bps"$.\
    $N = 10300 / 10 = 1030$.\

3. Consider building a CSMA/CD network at 100 Mbps over a 1-km cable with no repeaters. The signal speed in the cable is 200,000 km/sec. What is the minimum frame size?
    
    *Answer:*
    
    Round Trip Time (RTT) = $2 times "Length" / "Speed" = 2 times 1 "km" / 200,000 "km/s" = 10^{-5} "sec"$.\
    Minimum frame size = $"Bandwidth" times "RTT" = 100 times 10^6 "bps" times 10^{-5} "sec" = 1000 "bits"$.

4. An malicious host, A, connected to an 802.3 (Ethernet) network biases their implementation of the binary exponential backoff algorithm so they always choose from {0,1} after a collision, in any situation. Another host, B, is trying to send a frame at the same time as A.Assuming A and B collide exactly three times before one of their transmissions succeeds, what are the odds that B sends its frame before A(as opposed to A sending before B)?

    *Answer:*
    
    $1/14$

5. Which is not the private address that will not appear in Internet datagram? 
  
	#square([D])
	A. 10.3.18.82\
	B. 192.168.8.3\
	C. 10.214.0.1\
	D. 172.33.8.8\

6. Which is not a legal IPv6 address?
  
	#square([B])
	A. 8300::1382:4567:89AB:CDEF\
	B. 1382:4567:89AB:CDEF\
	C. ::211.31.20.46\
	D. 2A43:0000:0000:0000:0123:4567:89AB:CDEF\

7. Regarding the RIP protocol, which statement is correct?
  
	#square([B])
	A. RIP supports a maximum hop count of 16.
	B. RIP routing table updates are exchanged by broadcasting router messages to neighbors.
	C. Some entries in the RIP routing table only contain destination and next hop IP address.
	D. RIP is a link-state dynamic routing protocol.

8. Which is a link state routing protocol?
  
	#square([D])
	A. RIP
	B. IGRP
	C. BGP
	D. OSPF

9. Without using IPv6, which can solve the problem of running out of IP addresses?
  
	#square([D])
	A. class full addressing
	B. subnetting
	C. class addressing
	D. NAT

10. Convert the IP address whose hexadecimal representation is C22F1582 to dotted decimal notation.

    *Answer:*
    
    C2 = 194, 2F = 47, 15 = 21, 82 = 130.\
    Result: 194.47.21.130

11. A network on the Internet has a subnet mask of 255.255.240.0. What is the maximum number of hosts it can handle?
    
    *Answer:*
    
    255.255.240.0 corresponds to /20 prefix.\
    Host bits = $32 - 20 = 12$.\
    Total addresses = $2^{12} = 4096$.\
    Usable hosts = $4096 - 2 ("network" + "broadcast") = 4094$.

12. What is the valid host range for subnet 212.10.10.32, mask 255.255.255.224?

    *Answer:*
    
    Mask 255.255.255.224 is /27. Block size is $256 - 224 = 32$.\
    Subnet ID: 212.10.10.32\
    Next Subnet: 212.10.10.64\
    Broadcast: 212.10.10.63\
    Valid Host Range: 212.10.10.33 to 212.10.10.62

13. Suppose the routing table of router B is as follows: 
  
	(N1, 7, A), (N2, 2, C) , (N6, 8, F), (N8, 4, E), (N9, 4, F)
	
	where the three columns show the destination, distance, and next hop, respectively.After receiving the following vector from router C, what will the routing table of router B be? Elaborate each line of your answer.
	
	(N2, 4), (N3, 8) , (N6, 4), (N8, 3) , (N9, 5).

    *Answer:*
    // B receives vector from C. Assume link cost to C is 2.\
    // New costs via C = C's cost + 2.\
    // - N2: C reports 4. New cost = $4+2=6$. Old: (N2, 2, C). Update to (N2, 6, C).\
    // - N3: C reports 8. New cost = $8+2=10$. Old: None. Add (N3, 10, C).\
    // - N6: C reports 4. New cost = $4+2=6$. Old: (N6, 8, F). $6 < 8$, update to (N6, 6, C).\
    // - N8: C reports 3. New cost = $3+2=5$. Old: (N8, 4, E). $5 > 4$, no change.\
    // - N9: C reports 5. New cost = $5+2=7$. Old: (N9, 4, F). $7 > 4$, no change.\
    // - N1: Not in vector. Keep (N1, 7, A).\
    
    Resulting Table:\
    (N1, 7, A)\
    (N2, 5, C)\
    (N3, 9, C)\
    (N6, 5, C)\
    (N8, 4, E)\
    (N9, 4, F)

14. The client host A connects to the Internet via fast Ethernet interface. Following packet is captured at host A, The First 40 bytes of IP packet (HEX) are:

	#table()[45 00 00 32 00 00 40 00 2f 06 6e 83 d3 44 47 50 c0 a8 00 08\
	13 88 07 98 00 00 00 0b 84 6b 41 c6 70 12 16 d0 37 e1 00 00]

	What's the total length, TTL, source address and destination address of this packet?

	*Answer:*
    
    - Total Length: Bytes 2-3 = `00 32` (Hex) = $3 times 16 + 2 = 50$ bytes.
    - TTL: Byte 8 = `2f` (Hex) = $2 times 16 + 15 = 47$.\
    - Source Address: Bytes 12-15 = `d3 44 47 50` = 211.68.71.80.\
    - Destination Address: Bytes 16-19 = `c0 a8 00 08` = 192.168.0.8.


15.  A large number of consecutive IP addresses are available starting at 198.16.0.0. Suppose that four organizations, A, B, C, and D, request 4000, 2000, 4000, and 8000 addresses, respectively, and in that order. For each of these, give the first IP address assigned, the last IP address assigned, and the mask in the w.x.y.z/s notation.

	*Answer:*
    
	Start: 198.16.0.0.\
    
    *Request A (4000):* Needs $2^{12}=4096$ (/20).\
    Range: 198.16.0.0 - 198.16.15.255. Mask: 198.16.0.0/20.\
    
    *Request B (2000):* Needs $2^{11}=2048$ (/21).\
    Start: 198.16.16.0.\
    Range: 198.16.16.0 - 198.16.23.255. Mask: 198.16.16.0/21.\
    
    *Request C (4000):* Needs $2^{12}=4096$ (/20).\
    Must start on multiple of 16 in 3rd octet. Next available is .24.0 (not multiple of 16). Skip to .32.0.\
    Start: 198.16.32.0.\
    Range: 198.16.32.0 - 198.16.47.255. Mask: 198.16.32.0/20.\
    
    *Request D (8000):* Needs $2^{13}=8192$ (/19).\
    Must start on multiple of 32 in 3rd octet. Next available is .48.0 (not multiple). Skip to .64.0.\
    Start: 198.16.64.0.\
    Range: 198.16.64.0 - 198.16.95.255. Mask: 198.16.64.0/19.