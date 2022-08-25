# 15-bit Adder, Subtractor with Overflow Detector Circuit

The circuit, which can add and subtract two 15-bit integers and realize whether there is an overflow or not, was designed using Verilog HDL. Two different methods were implemented in these circuits, and then these two different adder-subtractors were compared in terms of propagation time and area requirements. These two adder-subtractors are as follows:

1.	**15-bit carry-ripple adder-subtractor using full adders** (RCA15bit.v using fullAdder.v)
2.	**15-bit hybrid adder-subtractor using carry lookaheads** (hybridAdder15bit.v using carryLookAhead.v)

This project was developed for the CS303 Logic & Digital System Design course at Sabanci University.

