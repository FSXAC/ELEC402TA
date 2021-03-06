
// Generated by Cadence Encounter(R) RTL Compiler RC14.13 - v14.10-s027_1

// Verification Directory fv/foobar 

module pulse_max5(clk, en, rst, done);
  input clk, en, rst;
  output done;
  wire clk, en, rst;
  wire done;
  wire [7:0] count;
  wire n_2, n_3, n_4, n_5, n_6, n_7, n_8, n_9;
  wire n_10, n_11, n_12, n_13, n_14, n_15, n_16, n_17;
  wire n_18, n_19, n_20, n_25;
  AND3_X2 g195(.A1 (n_25), .A2 (count[0]), .A3 (count[2]), .Z (done));
  INV_X1 g196(.I (count[1]), .ZN (n_25));
  DFFSNQ_X1 \count_reg[1] (.SN (1'b1), .CLK (clk), .D (n_20), .Q
       (count[1]));
  DFFSNQ_X1 \count_reg[2] (.SN (1'b1), .CLK (clk), .D (n_19), .Q
       (count[2]));
  NAND2_X1 g324(.A1 (n_17), .A2 (n_18), .ZN (n_20));
  DFFSNQ_X1 \count_reg[0] (.SN (1'b1), .CLK (clk), .D (n_13), .Q
       (count[0]));
  NAND2_X1 g326(.A1 (n_15), .A2 (n_14), .ZN (n_19));
  NAND3_X1 g327(.A1 (count[1]), .A2 (n_16), .A3 (n_2), .ZN (n_18));
  NAND2_X1 g328(.A1 (n_12), .A2 (n_7), .ZN (n_17));
  OAI21_X1 g329(.A1 (count[2]), .A2 (count[0]), .B (n_10), .ZN (n_16));
  NAND2_X1 g330(.A1 (n_11), .A2 (n_7), .ZN (n_15));
  NAND3_X1 g331(.A1 (count[2]), .A2 (n_9), .A3 (n_2), .ZN (n_14));
  OAI22_X1 g332(.A1 (n_5), .A2 (n_6), .B1 (count[0]), .B2 (n_8), .ZN
       (n_13));
  NOR2_X1 g333(.A1 (count[1]), .A2 (n_4), .ZN (n_12));
  NOR2_X1 g334(.A1 (n_25), .A2 (n_4), .ZN (n_11));
  INV_X1 g335(.I (n_9), .ZN (n_10));
  OAI21_X1 g336(.A1 (count[1]), .A2 (count[0]), .B (en), .ZN (n_9));
  NAND2_X1 g337(.A1 (n_2), .A2 (en), .ZN (n_8));
  INV_X1 g338(.I (n_6), .ZN (n_7));
  NAND2_X1 g339(.A1 (count[0]), .A2 (n_2), .ZN (n_6));
  INV_X1 g340(.I (n_4), .ZN (n_5));
  NAND2_X1 g341(.A1 (n_3), .A2 (en), .ZN (n_4));
  INV_X1 g347(.I (count[2]), .ZN (n_3));
  INV_X1 g348(.I (rst), .ZN (n_2));
endmodule

module pulse_max3(clk, en, rst, done);
  input clk, en, rst;
  output done;
  wire clk, en, rst;
  wire done;
  wire [7:0] count;
  wire n_2, n_3, n_4, n_5, n_6, n_7, n_8, n_10;
  wire n_12, n_18;
  AND2_X1 g178(.A1 (count[0]), .A2 (count[1]), .Z (done));
  INV_X1 g179(.I (count[0]), .ZN (n_12));
  DFFSNQ_X1 \count_reg[1] (.SN (1'b1), .CLK (clk), .D (n_10), .Q
       (count[1]));
  NOR2_X1 g292(.A1 (n_18), .A2 (rst), .ZN (n_10));
  DFFSNQ_X1 \count_reg[0] (.SN (1'b1), .CLK (clk), .D (n_8), .Q
       (count[0]));
  AOI21_X1 g295(.A1 (n_5), .A2 (n_6), .B (rst), .ZN (n_8));
  OAI22_X1 g296(.A1 (count[1]), .A2 (n_4), .B1 (n_3), .B2 (count[0]),
       .ZN (n_7));
  OAI21_X1 g297(.A1 (done), .A2 (n_12), .B (en), .ZN (n_6));
  NAND2_X1 g298(.A1 (count[0]), .A2 (n_2), .ZN (n_5));
  NAND2_X1 g299(.A1 (count[0]), .A2 (en), .ZN (n_4));
  INV_X1 g301(.I (count[1]), .ZN (n_3));
  INV_X1 g302(.I (en), .ZN (n_2));
  AOI21_X1 g2(.A1 (count[1]), .A2 (n_2), .B (n_7), .ZN (n_18));
endmodule

module foobar(clk, en, rst, foo, bar, count, count_foo, count_bar);
  input clk, en, rst;
  output foo, bar;
  output [7:0] count, count_foo, count_bar;
  wire clk, en, rst;
  wire foo, bar;
  wire [7:0] count, count_foo, count_bar;
  wire n_1, n_2, n_3, n_4, n_5, n_6, n_7, n_8;
  wire n_9, n_10, n_11, n_12, n_13, n_14, n_15, n_16;
  wire n_17, n_18, n_19, n_20, n_21, n_22, n_23, n_24;
  wire n_25, n_26, n_27, n_28, n_29, n_30, n_31, n_32;
  wire n_33, n_34, n_35, n_36, n_37, n_38, n_39, n_40;
  wire n_41, n_42, n_43, n_44, n_45, n_46, n_47, n_48;
  wire n_49, n_50, n_51, n_52, n_53, n_54, n_55, n_56;
  wire n_57, n_58, n_59, n_60, n_61, n_62, n_63, n_64;
  wire n_65, n_66, n_67, n_68, n_69, n_70, n_71, n_72;
  wire n_73, n_74, n_75, n_76, n_77, n_78, n_79, n_80;
  wire n_81, n_82, n_83, n_84, n_85, n_86, n_87, n_88;
  wire n_89, n_90, n_91, n_92, n_93, n_94, n_95, n_96;
  wire n_97, n_98, n_99, n_100, n_101, n_102, n_103, n_104;
  wire n_105, n_106;
  pulse_max5 U_BAR(clk, en, rst, bar);
  pulse_max3 U_FOO(clk, en, rst, foo);
  DFFSNQ_X1 \count_bar_reg[6] (.SN (1'b1), .CLK (clk), .D (n_103), .Q
       (count_bar[6]));
  DFFSNQ_X1 \count_foo_reg[6] (.SN (1'b1), .CLK (clk), .D (n_104), .Q
       (count_foo[6]));
  DFFSNQ_X1 \count_reg[6] (.SN (1'b1), .CLK (clk), .D (n_102), .Q
       (count[6]));
  DFFSNQ_X1 \count_bar_reg[2] (.SN (1'b1), .CLK (clk), .D (n_106), .Q
       (count_bar[2]));
  DFFSNQ_X1 \count_foo_reg[2] (.SN (1'b1), .CLK (clk), .D (n_105), .Q
       (count_foo[2]));
  DFFSNQ_X1 \count_bar_reg[3] (.SN (1'b1), .CLK (clk), .D (n_101), .Q
       (count_bar[3]));
  DFFSNQ_X1 \count_foo_reg[3] (.SN (1'b1), .CLK (clk), .D (n_100), .Q
       (count_foo[3]));
  OAI22_X1 g4639(.A1 (n_16), .A2 (n_99), .B1 (n_53), .B2 (n_38), .ZN
       (n_106));
  OAI22_X1 g4640(.A1 (n_7), .A2 (n_98), .B1 (n_55), .B2 (n_36), .ZN
       (n_105));
  OAI22_X1 g4641(.A1 (n_84), .A2 (n_28), .B1 (n_15), .B2 (n_25), .ZN
       (n_104));
  OAI22_X1 g4642(.A1 (n_85), .A2 (n_28), .B1 (n_10), .B2 (n_25), .ZN
       (n_103));
  OAI22_X1 g4643(.A1 (n_83), .A2 (n_28), .B1 (n_18), .B2 (n_25), .ZN
       (n_102));
  OAI22_X1 g4644(.A1 (n_89), .A2 (n_28), .B1 (n_12), .B2 (n_99), .ZN
       (n_101));
  OAI22_X1 g4645(.A1 (n_87), .A2 (n_28), .B1 (n_13), .B2 (n_98), .ZN
       (n_100));
  DFFSNQ_X1 \count_foo_reg[5] (.SN (1'b1), .CLK (clk), .D (n_96), .Q
       (count_foo[5]));
  DFFSNQ_X1 \count_foo_reg[7] (.SN (1'b1), .CLK (clk), .D (n_93), .Q
       (count_foo[7]));
  DFFSNQ_X1 \count_bar_reg[5] (.SN (1'b1), .CLK (clk), .D (n_95), .Q
       (count_bar[5]));
  DFFSNQ_X1 \count_bar_reg[7] (.SN (1'b1), .CLK (clk), .D (n_92), .Q
       (count_bar[7]));
  DFFSNQ_X1 \count_bar_reg[1] (.SN (1'b1), .CLK (clk), .D (n_97), .Q
       (count_bar[1]));
  DFFSNQ_X1 \count_foo_reg[1] (.SN (1'b1), .CLK (clk), .D (n_91), .Q
       (count_foo[1]));
  DFFSNQ_X1 \count_reg[7] (.SN (1'b1), .CLK (clk), .D (n_90), .Q
       (count[7]));
  DFFSNQ_X1 \count_reg[5] (.SN (1'b1), .CLK (clk), .D (n_88), .Q
       (count[5]));
  DFFSNQ_X1 \count_reg[4] (.SN (1'b1), .CLK (clk), .D (n_86), .Q
       (count[4]));
  DFFSNQ_X1 \count_foo_reg[4] (.SN (1'b1), .CLK (clk), .D (n_79), .Q
       (count_foo[4]));
  DFFSNQ_X1 \count_bar_reg[4] (.SN (1'b1), .CLK (clk), .D (n_78), .Q
       (count_bar[4]));
  DFFSNQ_X1 \count_reg[2] (.SN (1'b1), .CLK (clk), .D (n_82), .Q
       (count[2]));
  DFFSNQ_X1 \count_reg[3] (.SN (1'b1), .CLK (clk), .D (n_77), .Q
       (count[3]));
  AOI21_X1 g4659(.A1 (n_53), .A2 (n_29), .B (n_26), .ZN (n_99));
  AOI21_X1 g4660(.A1 (n_55), .A2 (n_29), .B (n_26), .ZN (n_98));
  OAI22_X1 g4661(.A1 (n_61), .A2 (n_28), .B1 (n_3), .B2 (n_25), .ZN
       (n_97));
  OAI22_X1 g4662(.A1 (n_63), .A2 (n_28), .B1 (n_14), .B2 (n_25), .ZN
       (n_96));
  INV_X1 g4663(.I (n_94), .ZN (n_95));
  AOI22_X1 g4664(.A1 (n_59), .A2 (n_29), .B1 (count_bar[5]), .B2
       (n_26), .ZN (n_94));
  OAI21_X1 g4665(.A1 (n_75), .A2 (n_28), .B (n_40), .ZN (n_93));
  OAI21_X1 g4666(.A1 (n_74), .A2 (n_28), .B (n_41), .ZN (n_92));
  OAI22_X1 g4667(.A1 (n_60), .A2 (n_28), .B1 (n_6), .B2 (n_25), .ZN
       (n_91));
  OAI21_X1 g4668(.A1 (n_72), .A2 (n_28), .B (n_39), .ZN (n_90));
  AOI21_X1 g4669(.A1 (n_16), .A2 (count_bar[3]), .B (n_81), .ZN (n_89));
  OAI22_X1 g4670(.A1 (n_62), .A2 (n_28), .B1 (n_2), .B2 (n_25), .ZN
       (n_88));
  AOI21_X1 g4671(.A1 (n_7), .A2 (count_foo[3]), .B (n_80), .ZN (n_87));
  OAI22_X1 g4672(.A1 (n_73), .A2 (n_28), .B1 (n_11), .B2 (n_25), .ZN
       (n_86));
  XOR2_X1 g4673(.A1 (n_52), .A2 (count_bar[6]), .Z (n_85));
  XOR2_X1 g4674(.A1 (n_56), .A2 (count_foo[6]), .Z (n_84));
  XOR2_X1 g4675(.A1 (n_57), .A2 (count[6]), .Z (n_83));
  DFFSNQ_X1 \count_reg[1] (.SN (1'b1), .CLK (clk), .D (n_76), .Q
       (count[1]));
  OAI22_X1 g4677(.A1 (n_8), .A2 (n_71), .B1 (n_21), .B2 (n_37), .ZN
       (n_82));
  NOR3_X1 g4678(.A1 (n_53), .A2 (n_16), .A3 (count_bar[3]), .ZN (n_81));
  NOR3_X1 g4679(.A1 (n_55), .A2 (n_7), .A3 (count_foo[3]), .ZN (n_80));
  OAI22_X1 g4680(.A1 (n_64), .A2 (n_28), .B1 (n_17), .B2 (n_25), .ZN
       (n_79));
  OAI22_X1 g4681(.A1 (n_58), .A2 (n_28), .B1 (n_9), .B2 (n_25), .ZN
       (n_78));
  OAI22_X1 g4682(.A1 (n_65), .A2 (n_28), .B1 (n_5), .B2 (n_71), .ZN
       (n_77));
  DFFSNQ_X1 \count_bar_reg[0] (.SN (1'b1), .CLK (clk), .D (n_70), .Q
       (count_bar[0]));
  DFFSNQ_X1 \count_foo_reg[0] (.SN (1'b1), .CLK (clk), .D (n_67), .Q
       (count_foo[0]));
  NOR2_X1 g4685(.A1 (n_68), .A2 (rst), .ZN (n_76));
  XOR2_X1 g4686(.A1 (n_54), .A2 (count_foo[7]), .Z (n_75));
  XOR2_X1 g4687(.A1 (n_50), .A2 (count_bar[7]), .Z (n_74));
  XOR2_X1 g4688(.A1 (n_49), .A2 (count[4]), .Z (n_73));
  XOR2_X1 g4689(.A1 (n_51), .A2 (count[7]), .Z (n_72));
  AOI21_X1 g4690(.A1 (n_21), .A2 (n_29), .B (n_26), .ZN (n_71));
  INV_X1 g4691(.I (n_69), .ZN (n_70));
  AOI22_X1 g4692(.A1 (n_30), .A2 (n_29), .B1 (count_bar[0]), .B2
       (n_26), .ZN (n_69));
  AOI22_X1 g4693(.A1 (n_31), .A2 (en), .B1 (count[1]), .B2 (n_1), .ZN
       (n_68));
  INV_X1 g4694(.I (n_66), .ZN (n_67));
  AOI22_X1 g4695(.A1 (n_33), .A2 (n_29), .B1 (count_foo[0]), .B2
       (n_26), .ZN (n_66));
  AOI21_X1 g4696(.A1 (n_8), .A2 (count[3]), .B (n_48), .ZN (n_65));
  XOR2_X1 g4697(.A1 (n_45), .A2 (count_foo[4]), .Z (n_64));
  XOR2_X1 g4698(.A1 (n_44), .A2 (count_foo[5]), .Z (n_63));
  XOR2_X1 g4699(.A1 (n_43), .A2 (count[5]), .Z (n_62));
  XOR2_X1 g4700(.A1 (n_22), .A2 (count_bar[1]), .Z (n_61));
  XOR2_X1 g4701(.A1 (n_20), .A2 (count_foo[1]), .Z (n_60));
  XOR2_X1 g4702(.A1 (n_42), .A2 (count_bar[5]), .Z (n_59));
  XOR2_X1 g4703(.A1 (n_47), .A2 (n_9), .Z (n_58));
  DFFSNQ_X1 \count_reg[0] (.SN (1'b1), .CLK (clk), .D (n_46), .Q
       (count[0]));
  OR2_X1 g4705(.A1 (n_43), .A2 (n_2), .Z (n_57));
  OR2_X1 g4706(.A1 (n_44), .A2 (n_14), .Z (n_56));
  OR2_X1 g4707(.A1 (n_20), .A2 (n_6), .Z (n_55));
  OR3_X1 g4708(.A1 (n_44), .A2 (n_14), .A3 (n_15), .Z (n_54));
  OR2_X1 g4709(.A1 (n_22), .A2 (n_3), .Z (n_53));
  NAND2_X1 g4710(.A1 (n_42), .A2 (count_bar[5]), .ZN (n_52));
  OR3_X1 g4711(.A1 (n_43), .A2 (n_18), .A3 (n_2), .Z (n_51));
  NAND3_X1 g4712(.A1 (n_42), .A2 (count_bar[5]), .A3 (count_bar[6]),
       .ZN (n_50));
  OR3_X1 g4713(.A1 (n_21), .A2 (n_8), .A3 (n_5), .Z (n_49));
  NOR3_X1 g4714(.A1 (n_21), .A2 (n_8), .A3 (count[3]), .ZN (n_48));
  NOR2_X1 g4715(.A1 (n_35), .A2 (n_23), .ZN (n_47));
  NOR2_X1 g4716(.A1 (n_32), .A2 (rst), .ZN (n_46));
  NAND4_X1 g4717(.A1 (foo), .A2 (n_27), .A3 (count_foo[0]), .A4
       (count_foo[3]), .ZN (n_45));
  OR3_X1 g4718(.A1 (n_34), .A2 (n_13), .A3 (n_7), .Z (n_44));
  NAND4_X1 g4719(.A1 (n_24), .A2 (count[4]), .A3 (count[2]), .A4
       (count[1]), .ZN (n_43));
  NOR3_X1 g4720(.A1 (n_35), .A2 (n_23), .A3 (n_9), .ZN (n_42));
  NAND2_X1 g4721(.A1 (count_bar[7]), .A2 (n_26), .ZN (n_41));
  NAND2_X1 g4722(.A1 (count_foo[7]), .A2 (n_26), .ZN (n_40));
  NAND2_X1 g4723(.A1 (count[7]), .A2 (n_26), .ZN (n_39));
  NAND2_X1 g4724(.A1 (n_16), .A2 (n_29), .ZN (n_38));
  NAND2_X1 g4725(.A1 (n_8), .A2 (n_29), .ZN (n_37));
  NAND2_X1 g4726(.A1 (n_7), .A2 (n_29), .ZN (n_36));
  NAND3_X1 g4727(.A1 (bar), .A2 (count_bar[0]), .A3 (count_bar[2]), .ZN
       (n_35));
  NAND4_X1 g4728(.A1 (foo), .A2 (count_foo[4]), .A3 (count_foo[0]), .A4
       (count_foo[1]), .ZN (n_34));
  XOR2_X1 g4729(.A1 (foo), .A2 (count_foo[0]), .Z (n_33));
  AOI22_X1 g4730(.A1 (count[0]), .A2 (n_1), .B1 (n_19), .B2 (en), .ZN
       (n_32));
  OAI22_X1 g4731(.A1 (n_19), .A2 (count[1]), .B1 (n_4), .B2 (count[0]),
       .ZN (n_31));
  XOR2_X1 g4732(.A1 (bar), .A2 (count_bar[0]), .Z (n_30));
  INV_X1 g4733(.I (n_29), .ZN (n_28));
  NOR2_X1 g4734(.A1 (n_1), .A2 (rst), .ZN (n_29));
  NOR2_X1 g4735(.A1 (n_6), .A2 (n_7), .ZN (n_27));
  INV_X1 g4736(.I (n_26), .ZN (n_25));
  NOR2_X1 g4737(.A1 (en), .A2 (rst), .ZN (n_26));
  NOR2_X1 g4738(.A1 (n_5), .A2 (n_19), .ZN (n_24));
  NAND2_X1 g4739(.A1 (count_bar[1]), .A2 (count_bar[3]), .ZN (n_23));
  NAND2_X1 g4740(.A1 (bar), .A2 (count_bar[0]), .ZN (n_22));
  NAND2_X1 g4741(.A1 (count[0]), .A2 (count[1]), .ZN (n_21));
  NAND2_X1 g4742(.A1 (foo), .A2 (count_foo[0]), .ZN (n_20));
  INV_X1 g4743(.I (count[0]), .ZN (n_19));
  INV_X1 g4744(.I (count[6]), .ZN (n_18));
  INV_X1 g4745(.I (count_foo[4]), .ZN (n_17));
  INV_X1 g4746(.I (count_bar[2]), .ZN (n_16));
  INV_X1 g4747(.I (count_foo[6]), .ZN (n_15));
  INV_X1 g4748(.I (count_foo[5]), .ZN (n_14));
  INV_X1 g4749(.I (count_foo[3]), .ZN (n_13));
  INV_X1 g4750(.I (count_bar[3]), .ZN (n_12));
  INV_X1 g4751(.I (count[4]), .ZN (n_11));
  INV_X1 g4752(.I (count_bar[6]), .ZN (n_10));
  INV_X1 g4753(.I (count_bar[4]), .ZN (n_9));
  INV_X1 g4754(.I (count[2]), .ZN (n_8));
  INV_X1 g4755(.I (count_foo[2]), .ZN (n_7));
  INV_X1 g4756(.I (count_foo[1]), .ZN (n_6));
  INV_X1 g4757(.I (count[3]), .ZN (n_5));
  INV_X1 g4758(.I (count[1]), .ZN (n_4));
  INV_X1 g4759(.I (count_bar[1]), .ZN (n_3));
  INV_X1 g4760(.I (count[5]), .ZN (n_2));
  INV_X1 g4761(.I (en), .ZN (n_1));
endmodule

