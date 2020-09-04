/*
 * Name: Muchen he
 * Date: 2020-09-04
 * Purpose: This is a foobar test bench
 */


// Specify simulation timing <unit step size> / <resolution>
 `timescale 5ps/1ps

 module foobar_tb;

logic clk;
logic en;
logic rst;

logic foo;
logic bar;

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
end

// Clock
always begin
    #2 clk = ~clk;
end

// Stop the simulation
initial begin
    #200
    $stop;
end

// File output
integer file_out;

initial begin
    file_out = $fopen("foobar.txt", "wb");
    $fstrobe(file_out, "%4d |     clk      en     rst     foo     bar  cntfoo  cntbar",);
end

always_ff @(posedge clk) begin
    $fstrobe(file_out, "%4d |%8b%8b%8b%8b%8b%8d%8d", clk, en, rst, foo, bar, count_foo, count_bar);
end


endmodule
