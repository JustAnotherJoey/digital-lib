//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/30/2021 09:12:58 PM
// Design Name: 
// Module Name: combinational_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
module sequential_tb ();

parameter width = 4;
reg clk, reset;
reg [width-1:0] d;
wire [width-1:0] q;
reg en;

dffre #(width) dut(
    .clk(clk),
    .r(reset),
    .en(en),
    .d(d),
    .q(q)
);

initial forever begin
	#5 clk = 0;
	#5 clk = 1;
end



initial begin
    reset = 1;
    en = 1;
    
    #20
    d = 4'b1111;
    #20
    d = 4'b0000;
    #20 
       
    $monitor("test");
end

endmodule