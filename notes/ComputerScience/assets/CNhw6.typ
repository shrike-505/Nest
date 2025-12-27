#import "@preview/ori:0.2.3": *
#show: ori.with(
  title: "作业6",
  subject: "计算机网络",
  semester: "2025-2026 秋冬学期",
) 
#set enum(numbering: "1.a.i.")

1. What is used at the transport layer to stop a receiving host's buffer from overflowing?
  
  #square("D")

  A. Segmentation\
  B. Packets\
  C. Acknowledgments\
  D. Flow control\

2. Which type of service is provided by TCP?
  
  #square("D")

  A. request-reply\
  B. acknowledged datagram\
  C. reliable message stream\
  D. reliable byte stream\
3. What scheme does TCP use to establish connections? Assume host A sends a segment (SYN = 1, seq = 11220) to host B in order to establish a connection. If host B accept to establish, what might SYN, ACK, seq, ack of the segment sent back by host B be?
  - SYN = ACK = 1
  - seq = an arbitrary number
  - ack = 11221
4. What is the total size of the minimum TCP MTU, including TCP and IP overhead but not including data link layer overhead?
  - 576 bytes
5. If the window size field of the acknowledgement TCP segment is 80 KB, and the congestion window size is 40 KB, how many bytes could the sender transmit next time?
  - 40k Bytes
6. If the TCP round-trip time, RTT, is currently 30 msec and the following acknowledgements come in after 26, 32, and 24 msec, respectively, what is the new RTT estimate using the Jacobson algorithm? Use α = 0.9.
#let RTT = "RTT"
#let msec = "msec"
  - $RTT_1 = 26 msec$, $RTT_2 = 32 msec$, $RTT_3 = 24 msec$
  - Assume $beta = 0.25$
  - $RTT_{S 1} = RTT_1 = 26 msec, RTT_{D 1} = 13 msec$
  - $RTT_{S 2} = (1 - 0.9) times RTT_{S 1} + 0.9 times RTT_2 = 0.1 times 13 + 0.9 times 32 = 30.1 msec, RTT_{D 2} = (1 - 0.25) times RTT_{D 1} + 0.25 times |RTT_{2} - RTT_{S 2}| = 0.75 times 13 + 0.25 times 1.9 = 10.225 msec$
  - $RTT_{S 3} = 0.1 times 30.1 + 0.9 times 24 = 24.61 msec$
  - New RTT estimate is 24.61 msec
7. Consider the effect of using slow start on a line with a 10-msec round-trip time and no congestion. The receive window is 24 KB and the maximum segment size is 2 KB. How long does it take before the first full window can be sent?
	- rwnd = 24 KB, MSS = 2 KB => need to receive 12 segments.
	- cwnd(initial) = 1 MSS = 2 KB
	- t = 0 ms: send 1 segment, cwnd = 2 KB
	- t = 10 ms: receive ack for 1 segment, send 2 segments, cwnd = 4 KB
	- t = 20 ms: receive acks for 2 segments, send 4 segments, cwnd = 8 KB
	- t = 30 ms: receive acks for 4 segments, send 8 segments, cwnd = 16 KB
	- t = 40 ms: receive acks for 8 segments, send 12 segments, cwnd = 24 KB >= rwnd
	- Hence, it takes 40 ms before the first full window can be sent.
8. In TCP Reno suppose that the TCP congestion window is set to 64 KB and a timeout occurs. How big will the window be if the next 5 transmission bursts are all successful? Assume that the maximum segment size is 1 KB.
  - After timeout, cwnd = 1 MSS = 1 KB, ssthresh = original cwnd / 2 = 32 KB
  - After 1st burst: cwnd = 2 KB
	- After 2nd burst: cwnd = 4 KB
	- After 3rd burst: cwnd = 8 KB
	- After 4th burst: cwnd = 16 KB
	- After 5th burst: cwnd = 32 KB
9.  In a network that has a maximum TPDU data size of 128 bytes, a maximum TPDU lifetime of 30 sec, and an 8-bit sequence number, what is the maximum data rate per connection?
  - To ensure that old TPDUs with the same sequence number are not still in the network when the sequence numbers wrap around, the time to exhaust all sequence numbers must be at least the maximum TPDU lifetime.
		- $frac(2^8, R) >= 30$, where $R$ is the maximum TPDU data rate
		- $R <= 256/30$ TPDUs/sec
		- Max data rate = $256/30 "TPDUs/sec" times 128 times 8 "bits/TPDU" = 131072/15 "bits/sec" approx 8738 "bps"$
10.  A TCP machine is sending full windows of 65,535 bytes over a 1-Gbps channel that has a 10-msec one-way delay. What is the maximum throughput achievable? What is the line efficiency?
  - $"TP" = "data"/"RTT" = frac(65535 * 8 "bits", 0.02 "s") = 26.214 "Mbps"$
  - Line efficiency = $frac("TP", "bandwidth") = frac(26.214 "Mbps", 10^9 "bps") = 2.6214%$
11. Host A consecutively sends two TCP segments to host B, whose seq are 70 and 100. 
  - How many bytes of data does the first segment carry?
		- 30 bytes
  - What is the ack in the segment sent back by host B after receiving the first segment?
		- 100
  - If the ack sent by B after receiving the second segment is 180, how many bytes of data are in the second segment sent by A?
		- 80 bytes
  - If the first segment sent by A is lost, but the second one reaches B. What should this ack be in the segment sent by B after the second segment arrives?
		- 70