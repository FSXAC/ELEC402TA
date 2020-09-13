/* Verilog module written by vlog2Verilog (qflow) */
/* With explicit power connections */

module up_counter(
    inout vdd,
    inout gnd,
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
    .gnd(gnd),
    .vdd(vdd),
    .A(en),
    .B(_27_[0]),
    .Y(_1_)
);

INVX2 _29_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rst),
    .Y(_2_)
);

OAI21X1 _30_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(en),
    .B(_27_[0]),
    .C(_2_),
    .Y(_3_)
);

NOR2X1 _31_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1_),
    .B(_3_),
    .Y(_0_[0])
);

NAND3X1 _32_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(en),
    .B(_27_[0]),
    .C(_27_[1]),
    .Y(_4_)
);

INVX2 _33_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_4_),
    .Y(_5_)
);

OAI21X1 _34_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_27_[1]),
    .B(_1_),
    .C(_2_),
    .Y(_6_)
);

NOR2X1 _35_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_5_),
    .B(_6_),
    .Y(_0_[1])
);

OAI21X1 _36_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_27_[2]),
    .B(_5_),
    .C(_2_),
    .Y(_7_)
);

AOI21X1 _37_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_27_[2]),
    .B(_5_),
    .C(_7_),
    .Y(_0_[2])
);

INVX1 _38_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_27_[3]),
    .Y(_8_)
);

NAND2X1 _39_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_27_[2]),
    .B(_5_),
    .Y(_9_)
);

NAND2X1 _40_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_27_[2]),
    .B(_27_[3]),
    .Y(_10_)
);

OAI21X1 _41_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_10_),
    .B(_4_),
    .C(_2_),
    .Y(_11_)
);

AOI21X1 _42_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_9_),
    .B(_8_),
    .C(_11_),
    .Y(_0_[3])
);

NOR2X1 _43_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_10_),
    .B(_4_),
    .Y(_12_)
);

OAI21X1 _44_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_27_[4]),
    .B(_12_),
    .C(_2_),
    .Y(_13_)
);

AOI21X1 _45_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_27_[4]),
    .B(_12_),
    .C(_13_),
    .Y(_0_[4])
);

AOI21X1 _46_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_12_),
    .B(_27_[4]),
    .C(_27_[5]),
    .Y(_14_)
);

NAND2X1 _47_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_27_[4]),
    .B(_27_[5]),
    .Y(_15_)
);

OR2X2 _48_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_10_),
    .B(_15_),
    .Y(_16_)
);

OAI21X1 _49_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_4_),
    .B(_16_),
    .C(_2_),
    .Y(_17_)
);

NOR2X1 _50_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_14_),
    .B(_17_),
    .Y(_0_[5])
);

NOR3X1 _51_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_10_),
    .B(_15_),
    .C(_4_),
    .Y(_18_)
);

OAI21X1 _52_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_27_[6]),
    .B(_18_),
    .C(_2_),
    .Y(_19_)
);

AOI21X1 _53_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_27_[6]),
    .B(_18_),
    .C(_19_),
    .Y(_0_[6])
);

AND2X2 _54_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_27_[0]),
    .B(_27_[1]),
    .Y(_20_)
);

AND2X2 _55_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_27_[4]),
    .B(_27_[5]),
    .Y(_21_)
);

AND2X2 _56_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(en),
    .B(_27_[6]),
    .Y(_22_)
);

NAND3X1 _57_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_20_),
    .B(_21_),
    .C(_22_),
    .Y(_23_)
);

OAI21X1 _58_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_10_),
    .B(_23_),
    .C(_27_[7]),
    .Y(_24_)
);

INVX1 _59_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_27_[7]),
    .Y(_25_)
);

NAND3X1 _60_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_27_[6]),
    .B(_25_),
    .C(_18_),
    .Y(_26_)
);

AOI21X1 _61_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_24_),
    .B(_26_),
    .C(rst),
    .Y(_0_[7])
);

BUFX2 _62_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_27_[0]),
    .Y(count[0])
);

BUFX2 _63_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_27_[1]),
    .Y(count[1])
);

BUFX2 _64_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_27_[2]),
    .Y(count[2])
);

BUFX2 _65_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_27_[3]),
    .Y(count[3])
);

BUFX2 _66_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_27_[4]),
    .Y(count[4])
);

BUFX2 _67_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_27_[5]),
    .Y(count[5])
);

BUFX2 _68_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_27_[6]),
    .Y(count[6])
);

BUFX2 _69_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_27_[7]),
    .Y(count[7])
);

DFFPOSX1 _70_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(clk),
    .D(_0_[0]),
    .Q(_27_[0])
);

DFFPOSX1 _71_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(clk),
    .D(_0_[1]),
    .Q(_27_[1])
);

DFFPOSX1 _72_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(clk),
    .D(_0_[2]),
    .Q(_27_[2])
);

DFFPOSX1 _73_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(clk),
    .D(_0_[3]),
    .Q(_27_[3])
);

DFFPOSX1 _74_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(clk),
    .D(_0_[4]),
    .Q(_27_[4])
);

DFFPOSX1 _75_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(clk),
    .D(_0_[5]),
    .Q(_27_[5])
);

DFFPOSX1 _76_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(clk),
    .D(_0_[6]),
    .Q(_27_[6])
);

DFFPOSX1 _77_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(clk),
    .D(_0_[7]),
    .Q(_27_[7])
);

endmodule
