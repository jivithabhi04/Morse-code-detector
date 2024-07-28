# Morse-code-detector

## Description of the Project: 

Morse code comprises of a series of dots and dashes corresponding to a particular character of the alphanumeric characters (alphabets and digits). In this project, the Morse code is inputted using push buttons present on the FPGA. Generally in Morse code, a dot corresponds to one unit and a dash corresponds to three units, space between parts of the same letter is one unit, space between letters is three units and space between different words is seven units. The spaces correspond to low voltage value (or 0 in binary) and the dots and dashes correspond to high voltage value (or 1 in binary). 
The basic idea is to set a particular range of time period to interpret the signal as a dot, a dash or different kinds of spaces. At the instant when we start to push the button (positive edge) or leave the button (negative edge). Using an asynchronous FSM, we detect the input sequence and the output can be generated using the FPGA and the character(s) can be displayed on the LCD Screen/ 7-Segment display

## Introduction: 

Morse code is one of the methods of transmitting information using dots and dashes. It is generally used in transmitting information through audio. Each character is associated with a series of dots and dashes. According to the International Standard Morse Code, the length of a dot is one unit and the length of a dash is three units. The space between parts of the same letter is one unit and the space between different letters is three units.

## Working: 

Clock: Using the 50MHz clock present in the FPGA, we used a clock divider and created a 1Hz clock. We used a counter and a comparator. The counter counts up to 25,000,000 and resets to zero. This count is compared with 24,999,999 using a comparator which gives output ‘1’ when both the numbers are equal. The output from the comparator is fed to a flip flop which toggles its output for every half second. This will create a 1Hz clock. 

FSM in the transmitter: 

In this FSM, the inputs are given as 0 or 1. This is a Moore FSM. The input is taken into the FPGA at every positive edge triggered clock pulse. Depending on the timing of the button being pressed or not pressed, the input is taken as a dot, dash, or a character space. The output of the FSM is of two bit and are as given below: 
00: space in between dashes and dots in a single letter. 
01: dot (when input is 10) 
10: dash (when input is 110) 
11: character space (when input is 0) 
This 2-bit output is transmitted and then is received by the receiver. State diagram of the FSM present in the transmitter.
 
FSM in the receiver: 

In this FSM the inputs are 2-bit inputs which are the outputs of the previous FSM. This is Mealy FSM. In this FSM also, input is taken into the FPGA at every positive edge triggered clock pulse. The main purpose of this FSM is to detect the series of dashes and dots and generate the corresponding output. And when a character space is received, the output is changed to the corresponding of the state and the state is set to reset.

