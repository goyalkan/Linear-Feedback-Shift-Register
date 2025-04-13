module LFSR_tb;
 reg clk, rst;
 wire [2:0] lfsr;
 // Instantiate the LFSR module
 LFSR uut (
 .clk(clk),
 .rst(rst),
 .lfsr(lfsr)
 );
 // Clock generation
 initial begin
 clk = 0;
 forever #4 clk = ~clk; 
 end
 // Stimulus and monitoring
 initial begin
 // Display header
 $display("Time\tLFSR");
 // Monitor LFSR value each clock
 $monitor("%0t\t%b", $time, lfsr);
 // Apply reset
 rst = 1;
 #10 rst = 0;
 // Run for enough cycles to see all updates
 #100;
 $finish;
 end
endmodule
