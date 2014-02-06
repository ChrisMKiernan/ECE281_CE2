# Computer Exercise 2

## Screenshots
![alt text](https://raw2.github.com/ChrisMKiernan/ECE281_CE2/master/Structural_Testbench.PNG "The testbench waveform for the structural circuit.")

The above is the waveform generated from the structural circuit, and below is the waveform from the simple behavioral circuit. To avoid a little confusion, look for the filename to the left of the waveform; the behavioral waveform has "Behavioral" in the filename.

![alt text](https://raw2.github.com/ChrisMKiernan/ECE281_CE2/master/Behavioral_Testbench.PNG "The testbench waveform for the behavioral circuit.")

## Analysis
The important thing here is that the two waveforms line up perfectly. Some more analysis of the waveforms shows that we did in fact program the circuit correctly. First, we can see that all output signals are 0 if EN is 0, which makes sense, because EN is a part of every output in the form of an AND gate. Looking up a simple decoder truth table or using the given table in the CE2 handout we can see that only one output should be present for each input. The waveforms above also confirm this. 

## What is it?
A decoder setup like this seems to be the most basic form of a selector. Basically it can take an N-bit input and "decode" the input to find what the number is. In other words, if we wanted output 3, in binary this would be 11. The decoder takes an input 11 (2-bit) and outputs a '1' on the number 3 output. This can be especially useful for something like RAM, if we want to select one of many outputs using the binary equivalent of that number. For example, with an 8-bit input (8 wires), we can decode the 8-bit number in order to select one single output wire out of 256. 
