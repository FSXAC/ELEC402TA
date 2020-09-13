
`timescale 1ns/1ps

module up_counter_tb;

// Testbench wires
logic [7:0] count;
logic clk, en, rst;

// Instantiate the module to test
up_counter DUT(.*);

// Initialize signals
initial begin
    {clk, en, rst} = 3'b001;
end

// Release reset signal and activate enable signal
// (after 15-unit delay)
initial begin
    #15;
    rst = 0;
    en = 1;
end

// Clock
always begin
    #10 clk = ~clk;
end

integer file_out;

initial begin
    file_out = $fopen("up_counter_tb.csv", "wb");
    $fstrobe(file_out, "time,clk,rst,en,count");
end

always @(posedge clk) begin
    $fstrobe(file_out, "%3d,%b,%b,%b,%d", $time, clk, rst, en, count);
end

endmodule