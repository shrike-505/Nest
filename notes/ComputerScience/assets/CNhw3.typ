#import "@preview/ori:0.2.3": *
#show: ori.with(
  title: "作业3",
  subject: "计算机网络",
  semester: "2025-2026 秋冬学期",
) 
#set enum(numbering: "1.a.i)")

1. A bit string, 0111101111101111110, needs to be transmitted at the data link layer. What is the string actually transmitted after bit stuffing?

  Insert a 0 after every consecutive 1s: 011110111110011111010

2. What is the remainder obtained by dividing $x^7 + x^5 + 1$ by the generator polynomial $x^3 + 1$? (give your answer as bit string)

  Get remainder $-x^2 + x + 1$, correspond to bit string 111

3. A channel has a bit rate of 4 kbps and a propagation delay of 20 msec. For what range of frame sizes does stop-and-wait give an efficiency of at least 50 percent? 
   
  $50% <= frac("FrameSize"/(4 times 10^3 "bps"),"FrameSize"/(4 times 10^3 "bps") + 2 * 20 times 10^(-3) "s")$

  Solve it and get FrameSize >= 80 bits

4. Consider an error-free 64-kbps satellite channel used to send 512-byte data frames in one direction, with very short acknowledgements coming back the other way. What is the maximum throughput for window sizes of 1, 7, 15? The earth-satellite propagation time is 270 msec. (give your answer as an integer)
  + for window size=1
    - Total time per frame: $T = "TransmissionDelay" + 2 times "PropagationDelay" = frac(512 times 8 "bits", 64 times 10^3 "bps") + 2 * 270 times 10^(-3) "s" = 0.604s$
    - $"TP" = frac("WindowSize" times "FrameSize", "TotalTime") = frac(1 times 4096 "bits", 0.604s) = 6781"bps"$
  + for window size=7
    - $"TP" = frac("WindowSize" times "FrameSize", "TotalTime") = frac(7 times 4096 "bits", 0.604s) = 47470"bps"$
  + for window size=15
    - $"TP" = frac("WindowSize" times "FrameSize", "TotalTime") = frac(15 times 4096 "bits", 0.604s) = 101722"bps"$, but it transcends the channel capacity, so the maximum throughput is 64000 bps
  
5. A 100-km-long cable runs at the T1 data rate. The propagation speed in the cable is $2/3$ the speed of light in vacuum. How many bits fit in the cable?
  - $"T1"=1.554 "Mbps"$ 
  - TransmissionDelay $= frac(100 times 10^3 m, 2 times 10^8 "m/s") = 5 times 10^(-4) s$
  - "Bits fit" = $"bandwidth-delay product" = 5 times 10^(-4) s times 1.554 times 10^6 "bps" = 777 "bits"$

6. A CRC generator polynomial is $G(X)= X^16+X^15+X^2+1$. How many bits will the checksum(发送方进行计算后得到余数的位数) be?
  - The degree of the generator polynomial is 16, so the checksum will be 16 bits.
  
7. Assume the sequence number has 3 bits. What is the maximum number of outstanding sending frames for a go back N protocol?
  - $W_T(max) = 2^3 -1 = 7$
  - The maximum number of outstanding sending frames is 7. 

8. Assume the sequence number has 5 bits. What is the maximum number of outstanding sending frames for a selective repeat protocol?
  - $W_T(max) = 2^(5-1) = 16$
  - The maximum number of outstanding sending frames is 16.

9. A CSMA/CD Ethernet network has a length of 10 km, a data rate of 10 Mb/s, and a signal propagation speed of 200 m/μs. What’s the minimum frame length for this network?
  - $"minFrameLength"= "DataRate" times "ContentionPeriod" = 10 times 10^6 "bps" times 2 times frac(10 times 10^3 m, 200 times 10^6 "m/s") = 1000 "bits"$

10. After the sender first sends frames from 0 to 6 and at the end of timeout receives the acknowledgements for frame 1, 3, and 5, the next frame it will re-transmit is which frame? (assume the protocol is go-back-N)
  - Frame 6, from which timeout starts.