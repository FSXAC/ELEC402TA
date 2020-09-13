/* Verilog module written by vlog2Verilog (qflow) */
/* With bit-blasted vectors */
/* With power connections converted to binary 1, 0 */

module up_counter(
    input clk,
    output [7:0] count,
    input en,
    input rst
);

wire _19_ ;
wire _16_ ;
wire _13_ ;
wire _7_ ;
wire _10_ ;
wire _4_ ;
wire _1_ ;
wire clk ;
wire en ;
wire [7:0] _27_ ;
wire _24_ ;
wire _21_ ;
wire _18_ ;
wire _15_ ;
wire _9_ ;
wire _12_ ;
wire _6_ ;
wire rst ;
wire _3_ ;
wire [7:0] _0_ ;
wire _26_ ;
wire [7:0] count ;
wire _23_ ;
wire _20_ ;
wire _17_ ;
wire _14_ ;
wire _8_ ;
wire _11_ ;
wire _5_ ;
wire _2_ ;
wire _25_ ;
wire _22_ ;

AND2X2 _28_ (
    .A(en),
    .B(_27_[0]),
    .Y(_1_)
);

INVX2 _29_ (
    .A(rst),
    .Y(_2_)
);

OAI21X1 _30_ (
    .A(en),
    .B(_27_[0]),
    .C(_2_),
    .Y(_3_)
);

NOR2X1 _31_ (
    .A(_1_),
    .B(_3_),
    .Y(_0_[0])
);

NAND3X1 _32_ (
    .A(en),
    .B(_27_[0]),
    .C(_27_[1]),
    .Y(_4_)
);

INVX2 _33_ (
    .A(_4_),
    .Y(_5_)
);

OAI21X1 _34_ (
    .A(_27_[1]),
    .B(_1_),
    .C(_2_),
    .Y(_6_)
);

NOR2X1 _35_ (
    .A(_5_),
    .B(_6_),
    .Y(_0_[1])
);

OAI21X1 _36_ (
    .A(_27_[2]),
    .B(_5_),
    .C(_2_),
    .Y(_7_)
);

AOI21X1 _37_ (
    .A(_27_[2]),
    .B(_5_),
    .C(_7_),
    .Y(_0_[2])
);

INVX1 _38_ (
    .A(_27_[3]),
    .Y(_8_)
);

NAND2X1 _39_ (
    .A(_27_[2]),
    .B(_5_),
    .Y(_9_)
);

NAND2X1 _40_ (
    .A(_27_[2]),
    .B(_27_[3]),
    .Y(_10_)
);

OAI21X1 _41_ (
    .A(_10_),
    .B(_4_),
    .C(_2_),
    .Y(_11_)
);

AOI21X1 _42_ (
    .A(_9_),
    .B(_8_),
    .C(_11_),
    .Y(_0_[3])
);

NOR2X1 _43_ (
    .A(_10_),
    .B(_4_),
    .Y(_12_)
);

OAI21X1 _44_ (
    .A(_27_[4]),
    .B(_12_),
    .C(_2_),
    .Y(_13_)
);

AOI21X1 _45_ (
    .A(_27_[4]),
    .B(_12_),
    .C(_13_),
    .Y(_0_[4])
);

AOI21X1 _46_ (
    .A(_12_),
    .B(_27_[4]),
    .C(_27_[5]),
    .Y(_14_)
);

NAND2X1 _47_ (
    .A(_27_[4]),
    .B(_27_[5]),
    .Y(_15_)
);

OR2X2 _48_ (
    .A(_10_),
    .B(_15_),
    .Y(_16_)
);

OAI21X1 _49_ (
    .A(_4_),
    .B(_16_),
    .C(_2_),
    .Y(_17_)
);

NOR2X1 _50_ (
    .A(_14_),
    .B(_17_),
    .Y(_0_[5])
);

NOR3X1 _51_ (
    .A(_10_),
    .B(_15_),
    .C(_4_),
    .Y(_18_)
);

OAI21X1 _52_ (
    .A(_27_[6]),
    .B(_18_),
    .C(_2_),
    .Y(_19_)
);

AOI21X1 _53_ (
    .A(_27_[6]),
    .B(_18_),
    .C(_19_),
    .Y(_0_[6])
);

AND2X2 _54_ (
    .A(_27_[0]),
    .B(_27_[1]),
    .Y(_20_)
);

AND2X2 _55_ (
    .A(_27_[4]),
    .B(_27_[5]),
    .Y(_21_)
);

AND2X2 _56_ (
    .A(en),
    .B(_27_[6]),
    .Y(_22_)
);

NAND3X1 _57_ (
    .A(_20_),
    .B(_21_),
    .C(_22_),
    .Y(_23_)
);

OAI21X1 _58_ (
    .A(_10_),
    .B(_23_),
    .C(_27_[7]),
    .Y(_24_)
);

INVX1 _59_ (
    .A(_27_[7]),
    .Y(_25_)
);

NAND3X1 _60_ (
    .A(_27_[6]),
    .B(_25_),
    .C(_18_),
    .Y(_26_)
);

AOI21X1 _61_ (
    .A(_24_),
    .B(_26_),
    .C(rst),
    .Y(_0_[7])
);

BUFX2 _62_ (
    .A(_27_[0]),
    .Y(count[0])
);

BUFX2 _63_ (
    .A(_27_[1]),
    .Y(count[1])
);

BUFX2 _64_ (
    .A(_27_[2]),
    .Y(count[2])
);

BUFX2 _65_ (
    .A(_27_[3]),
    .Y(count[3])
);

BUFX2 _66_ (
    .A(_27_[4]),
    .Y(count[4])
);

BUFX2 _67_ (
    .A(_27_[5]),
    .Y(count[5])
);

BUFX2 _68_ (
    .A(_27_[6]),
    .Y(count[6])
);

BUFX2 _69_ (
    .A(_27_[7]),
    .Y(count[7])
);

DFFPOSX1 _70_ (
    .CLK(clk),
    .D(_0_[0]),
    .Q(_27_[0])
);

DFFPOSX1 _71_ (
    .CLK(clk),
    .D(_0_[1]),
    .Q(_27_[1])
);

DFFPOSX1 _72_ (
    .CLK(clk),
    .D(_0_[2]),
    .Q(_27_[2])
);

DFFPOSX1 _73_ (
    .CLK(clk),
    .D(_0_[3]),
    .Q(_27_[3])
);

DFFPOSX1 _74_ (
    .CLK(clk),
    .D(_0_[4]),
    .Q(_27_[4])
);

DFFPOSX1 _75_ (
    .CLK(clk),
    .D(_0_[5]),
    .Q(_27_[5])
);

DFFPOSX1 _76_ (
    .CLK(clk),
    .D(_0_[6]),
    .Q(_27_[6])
);

DFFPOSX1 _77_ (
    .CLK(clk),
    .D(_0_[7]),
    .Q(_27_[7])
);

endmodule
