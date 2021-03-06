/*
 * Name: Muchen he
 * Date: 2020-09-04
 * Purpose: This is a foobar test bench
 */


// Specify simulation timing <unit step size> / <resolution>
 `timescale 10ps/1ps

 module foobar_tb;

logic clk;
logic en;
logic rst;

logic foo;
logic bar;

logic [7:0] count;
logic [7:0] count_foo;
logic [7:0] count_bar;

foobar DUT(.*);

// Setup / initialization
initial begin
    clk = 0;
    en = 0;
    rst = 1;
end

initial begin
    #13
    en = 1;
    rst = 0;

    #200
    en = 0;

    #20
    $stop;
end

// Clock
always begin
    #2 clk = ~clk;
end

// File output
integer file_out;

initial begin
    file_out = $fopen("foobar.txt", "wb");
    $fstrobe(file_out, "%4d |     clk      en     rst     foo     bar  cntfoo  cntbar", $time);
end

always_ff @(posedge clk) begin
    $fstrobe(file_out, "%4d |%8d%8d%8d%8d%8d%8d%8d", $time, clk, en, rst, foo, bar, count_foo, count_bar);
end


endmodule
