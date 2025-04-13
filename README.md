This project involves designing, implementing, and analysing a 3-bit Linear Feedback Shift Register (LFSR) using 
Verilog HDL. The specific implementation is a 3-bit LFSR with a feedback polynomial that XORs bits from positions 0 and 2, creating a pseudorandom sequence.

The implemented LFSR follows the structure with three flip-flops (labeled as dFF0, dFF1, and dFF2) and a feedback path connecting the XOR of bits 0 and 2 to the input of the rightmost position during each shift operation.
