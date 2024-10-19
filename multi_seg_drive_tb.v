`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/01/2024 02:26:42 PM
// Design Name: 
// Module Name: multi_seg_drive_tb
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

module multi_seg_drive_tb;

    reg clk;
    reg [15:0] bcd_in;
    wire [3:0] sseg_a_o;
    wire [6:0] sseg_c_o;

    multi_seg_drive uut (.clk(clk),.bcd_in(bcd_in),.sseg_a_o(sseg_a_o),.sseg_c_o(sseg_c_o));

    always
        begin
            #5 clk = ~clk; 
        end

    initial begin
        clk = 1;
        #50000; bcd_in = 16'b0000_0001_0000_0110;
        #50000; bcd_in = 16'b0000_0000_0001_0010;
        #50000; bcd_in = 16'b0000_0000_0010_0011;
        #50000; bcd_in = 16'b0000_0000_0011_0100; 
        #50000; bcd_in = 16'b1111_1111_1111_1111;

        $stop;
    end
endmodule

