#import "@preview/ori:0.2.3": *
#show: ori.with(
  title: "作业6",
  subject: "计算机网络",
  semester: "2025-2026 秋冬学期",
) 
#set enum(numbering: "1.a.i.")

1. What is used at the transport layer to stop a receiving host's buffer from overflowing?
  
  #square("")

  A. Segmentation\
  B. Packets\
  C. Acknowledgments\
  D. Flow control\

2. Which type of service is provided by TCP?
  
  #square("")

  A. request-reply\
  B. acknowledged datagram\
  C. reliable message stream\
  D. reliable byte stream\
3. What scheme does TCP use to establish connections? Assume host A sends a segment (SYN = 1, seq = 11220) to host B in order to establish a connection. If host B accept to establish, what might SYN, ACK, seq, ack of the segment sent back by host B be?
4. What is the total size of the minimum TCP MTU, including TCP and IP overhead but not including data link layer overhead?
5. If the window size field of the acknowledgement TCP segment is 80 KB, and the congestion window size is 40 KB, how many bytes could the sender transmit next time?
6. If the TCP round-trip time, RTT, is currently 30 msec and the following acknowledgements come in after 26, 32, and 24 msec, respectively, what is the new RTT estimate using the Jacobson algorithm? Use α = 0.9.
7. Consider the effect of using slow start on a line with a 10-msec round-trip time and no congestion. The receive window is 24 KB and the maximum segment size is 2 KB. How long does it take before the first full window can be sent?
8. In TCP Reno suppose that the TCP congestion window is set to 64 KB and a timeout occurs. How big will the window be if the next 5 transmission bursts are all successful? Assume that the maximum segment size is 1 KB.
9. In a network that has a maximum TPDU data size of 128 bytes, a maximum TPDU lifetime of 30 sec, and an 8-bit sequence number, what is the maximum data rate per connection?
10. A TCP machine is sending full windows of 65,535 bytes over a 1-Gbps channel that has a 10-msec one-way delay. What is the maximum throughput achievable? What is the line efficiency?
11. Host A consecutively sends two TCP segments to host B, whose seq are 70 and 100. 
  
  - How many bytes of data does the first segment carry?
  
  - What is the ack in the segment sent back by host B after receiving the first segment?
  
  - If the ack sent by B after receiving the second segment is 180, how many bytes of data are in the second segment sent by A?
  
  - If the first segment sent by A is lost, but the second one reaches B. What should this ack be in the segment sent by B after the second segment arrives