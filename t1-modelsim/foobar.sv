/*
 * Name: Muchen he
 * Date: 2020-09-04
 * Purpose: This is a simple foobar FSM
 *          A counter counts starting from 1
 *          FOO turns ON when count is divisible by 3
 *          BAR turns ON when count is divisible by 5
 *          Returns number of FOO and BARs
 */

module foobar(
    input logic clk,
    input logic en,
    input logic rst,

    output logic foo,
    output logic bar,

    output logic[7:0] count,
    output logic[7:0] count_foo,
    output logic[7:0] count_bar
);

pulse #(3) U_FOO(clk, en, rst, foo);
pulse #(5) U_BAR(clk, en, rst, bar);

always_ff @(posedge clk) begin
    if (rst) begin
        count_foo <= 0;
        count_bar <= 0;
        count <= 0;
    end

    else if (en) begin
        count_foo <= count_foo + foo;
        count_bar <= count_bar + bar;
        count <= count + 1;
    end
end

endmodule
