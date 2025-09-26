#import "@preview/ori:0.2.3": *

#show: ori.with(
  title: "作业1",
  subject: "计算机网络",
  semester: "2025-2026 秋冬学期",
) 

= Homework 1

1. The distance between the sender and the receiver is 2000km, and the data rate on the media is $2 times 10^8$ m/s. Calculate the transmission delay and propagation delay in the following two cases: (i) The data length is $10^7$ bit and the data transmission rate is 100Kbps; (ii) The data length is $10^4$bit and the data transmission rate is 1Gbps. According to the results above, when do the transmission and the propagation delay become dominant in the total delay, respectively?

#solution[
  (i)
  - transmission delay: $"td" = frac(10^7 "bit", 100 "Kbps") = frac(10^7, 100 times 10^3) s = 100s$
  - propagation delay: $"pd" = frac(2000 times 10^3 "m", 2 times 10^8 "m/s") = 0.01s$

  (ii)
  - transmission delay: $"td" = frac(10^4 "bit", 1 "Gbps") = frac(10^4, 10^9) s = 10^(-5) s$
  - propagation delay: $"pd" = frac(2000 times 10^3 "m", 2 times 10^8 "m/s") = 0.01s$

  Clearly we can see that transmission delay becomes dominant when the data (packet) length is large and the transmission rate is low, for it takes a long time to push all the bits into the link; and propagation delay becomes dominant when the data (packet) length is small and the transmission rate is high, for it transmits all the bits into the link quickly compared to the time it takes for a bit to propagate from the sender to the receiver.
]


2. What are two reasons for using layered protocols? What is one possible disadvantage of using layered protocols?


3. In some networks, the data link layer handles transmission errors by requesting that damaged frames be retransmitted. If the probability of a frame’s being damaged is p, what is the mean number of transmissions required to send a frame? Assume that acknowledgments are never lost.


4. What is the main difference between TCP and UDP?


5. How long was a bit in the original 802.3 standard in meters, which uses a transmission speed of 10 Mbps? Assume the propagation speed in coax is 2/3 the speed of light in vacuum.


6. List one advantage and one disadvantage of having international standards for network protocols.


7. Which layers are common in the OSI model and TCP/IP model?
