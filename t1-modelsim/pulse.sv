/*
 * Name: Muchen he
 * Date: 2020-09-04
 * Purpose: Specify a max value using module parameter.
 *          A counter will count up to the max value.
 *          The module will pulse output signal
 *          once the max value has been reached,
 *          and then it repeats.
 */

module pulse(
    input logic clk,
    input logic en,
    input logic rst,

    output logic done
);

parameter max = 3;
logic[7:0] count;

/* Sequential logic for state memory */
always_ff @(posedge clk) begin
    if (rst) begin
        count <= 0;
    end else if (en) begin
        if (count < max) count <= count + 1;
        else count <= 0;
    end
end

/* Combinatory logic for output (if any) */
assign done = (count == max);

endmodule
