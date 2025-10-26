#import "@preview/ori:0.2.3": *
#show: ori.with(
  title: "作业1",
  subject: "计算机网络",
  semester: "2025-2026 秋冬学期",
) 

#set enum(numbering: "1.a.i)")
+ "Fast" Ethernet operates 10x faster (100Mbps) than regular ethernet. Explain why the following changes were made.
  + Encoding changed to 4B/5B. 
    + #solution[4B/5B encoding maps 4-bit data to 5-bit code, with 25% overhead, which is much better compared to 100% overhead of Manchester encoding used in regular Ethernet. This allows more efficient use of the available bandwidth.
    
    Moreover, 5-bit codes are carefully chosen to ensure there are never 3 consecutive zeros, which guarantees frequent transitions on the wire.
    ]
  + CAT-5 cable has more twists.
    + #solution[Any electromagnetic interference that hits the cable is picked up equally but with opposite polarity by consecutive loops formed by the twists of the cable. When the signal arrives at the receiver, this interference cancels itself out.]

+ If a binary signal is sent over a 3-kHz channel whose signal-to-noise radio is 20dB, what is the maximum achievable data rate?
  + #solution[
    According to Shannon's theorem, the maximum data rate C is given by:

    $C = W log_2 (1 + S/N)$ where $S/N = 10^(20/10) = 100$

    So, $C = 3000 * log_2 (1 + 100) = 3000 * log_2 (101) ≈ 3000 * 6.6582 ≈ 19974.6$ bps.
  ]

+ What are the advantages of fiber optics over copper as a transmission medium? Is there any downside of using fiber optics over copper?
  + Advantages: fiber optics provide higher transmission capacity as well as higher bandwidth, along with more sturdy resistance against electromagnetic interference, which contributes to less loss of signal. Fiber optics are also lighter and thinner than copper cables, making them easier to install and and guaranteeing a longer distance of relay.
  + Disadvantages: fiber optics require specially designed equipments for cutting and splicing at high cost. Also fiber interfaces are more expensive than copper ones. 

+ Is the Nyquist theorem true for high-quality single-mode optical fiber or only for copper wire?
  + The theorem is true for both. The difference between the media just limits the bandwidth W and the number of signal levels M that can be used, but the relationship described by the theorem holds for both media.

+ What is the minimum bandwidth needed to achieve a data rate of B bits/sec if the  signal is transmitted using NRZ and Manchester encoding? Explain your answer.
  + #solution[Presuming a noiseless channel, according to Nyquist theorem, $"Maximum Baud Rate" = 2 W "Symbol/s"$; so in order to achieve a data rate of B bits/sec, the minimum bandwidth W needed $W = B/2$ Hz.

  - In NRZ, each bit is represented by a constant voltage level for the entire bit duration $T = 1/B$ sec, which leads to a frequency of $B/2$ with period $2T$. Therefore, the minimum bandwidth needed is $B/2$ Hz.
  - In Manchester, each bit is represented by a transition in the middle of the bit duration, which effectively enlarges the max frequency to $2B$. However considering the worst case(consecutive 0s or 1s), the frequency of which is $B$, the minimum bandwidth needed is $B$ Hz.
  ]

+ Is an oil pipeline a simplex system, a half-duplex system, a full-duplex system, or none of the above? What about a river or a walkie-talkie-style communication?
  + Oil pipeline: simplex system, as oil can only flow in one direction at a time.
  + River: simplex system, as water flows in one direction.
  + Walkie-talkie-style communication: half-duplex system, as communication can occur in both directions but not simultaneously.

+ A modem constellation diagram similar to image below has data points at the following coordinates: $(1,1), (1,-1), (-1,1), (-1,-1)$. How many bps can a modem with these parameters achieve at 1200 symbols/sec?

  #figure(image("CN20.png"))

  + #solution[The system has got 4 kinds of symbols, hence each symbol can symbolize $log_2 4 = 2$ bits. Therefore, at a rate of 1200 symbols/sec, the data rate is $1200 * 2 = 2400$ bps.]

+ What is the difference, if any, between the demodulator part of a modem and the coder part of codec? (After all, both convert analog signals to digital ones.)
  + Modem demodulator aims to recover the digital data from the modulated analog signal, which may involve dealing with noise and distortion introduced during transmission.
  + Codec coder focuses on compressing and encoding digital data into a specific format for efficient storage or representation, without necessarily dealing with analog signal characteristics.

+ Suppose that A, B, and C are simultaneously transmitting 0 bits, using a CDMA  system with the chip sequences of Fig.(a). What is the resulting chip sequence?

  #figure(image("CN21.png"))

  + #solution[
    #three-line-table(stroke:0.5pt)[
      |site |A site|B site|C site|
      |chip vector|+1 +1 +1 -1 -1 +1 -1 -1|+1 +1 -1 +1 -1 -1 -1 +1|+1 -1 +1 -1 -1 -1 +1 +1|
    ]

    Add up the chip vectors element-wise from A, B, and C:

    Result chip seq: +3 +1 +1 -1 -3 -1 -1 +1
  ]