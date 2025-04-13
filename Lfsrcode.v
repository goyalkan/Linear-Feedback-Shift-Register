module LFSR(clk,rst,lfsr);
input clk,rst;
output reg[2:0]lfsr;
integer cycle_count;
  
always @(posedge clk or posedge rst) begin
 if (rst) begin
    lfsr <= 3'b100; // Initial value set to 100
    cycle_count <= 0; // Reset the cycle counter
end 
 else if (cycle_count < 5) begin
    lfsr <= {lfsr[1],lfsr[0],lfsr[0]^lfsr[2]}; // XOR and shift operation
    cycle_count <= cycle_count + 1; // Increment cycle counter 
 end
  
end
endmodule
