
module cruisecontrol_DW01_inc_0 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  HA_X1 U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  HA_X1 U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  HA_X1 U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  HA_X1 U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  HA_X1 U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  HA_X1 U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  INV_X1 U1 ( .A(A[0]), .ZN(SUM[0]) );
  XOR2_X1 U2 ( .A(carry[7]), .B(A[7]), .Z(SUM[7]) );
endmodule


module cruisecontrol_DW01_inc_1 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  HA_X1 U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  HA_X1 U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  HA_X1 U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  HA_X1 U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  HA_X1 U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  HA_X1 U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  INV_X1 U1 ( .A(A[0]), .ZN(SUM[0]) );
  XOR2_X1 U2 ( .A(carry[7]), .B(A[7]), .Z(SUM[7]) );
endmodule


module cruisecontrol ( clk, reset, throttle, set, accel, coast, cancel, resume, 
        brake, speed, cruisespeed, cruisectrl );
  output [7:0] speed;
  output [7:0] cruisespeed;
  input clk, reset, throttle, set, accel, coast, cancel, resume, brake;
  output cruisectrl;
  wire   N58, N70, N71, N72, N73, N74, N75, N76, N77, N130, N131, N132, N133,
         N134, N135, N146, N147, N148, N149, N150, N151, N152, N153, N164,
         N165, N166, N167, N168, N169, N170, N189, N190, n2, n3, n4, n5, n6,
         n7, n8, n9, n18, n33, n38, n39, n47, n48, n49, n50, n51, n52, n53,
         n54, n55, n56, n57, n580, n59, n60, n61, n62, n63, n64, n65, n66, n67,
         n68, n69, n700, n710, n720, n730, n740, n750, n760, n770, n78, n79,
         n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93,
         n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n1280, n129, n1300, n1310, n1320, n1330, n1340, n1350, n136, n137,
         n138, n139, n140, n141, n142, n143, n144, n145, n1460, n1470, n1480,
         n1490, n1500, n1510, n1520, n1530, n154, n155, n156, n157, n158, n159,
         n160, n161, n162, n163, n1640, n1650, n1660, n1670, n1680, n1690,
         n1700, n171, n172, n173, n174, n175, n176, n177, n178, n179, n180,
         n181, n182, n183, n184, n185, n186, n187, n188, n1890, n1900, n191,
         n192, n193, n194, n195, n196, n197, n198, n199, n200, n201, n202,
         n203, n204, n205, n206, n207, n208, n209, n210, n211, n212, n213,
         n214, n215, n216, n217, n218, n219, n220, n221, n222, n223, n224,
         n225, n226, n227, n228, n229, n230, n231, n232, n233, n234, n235,
         n236, n237;
  wire   [2:0] state;
  wire   [7:3] r116_carry;

  cruisecontrol_DW01_inc_0 add_118 ( .A(cruisespeed), .SUM({N153, N152, N151, 
        N150, N149, N148, N147, N146}) );
  cruisecontrol_DW01_inc_1 r113 ( .A(speed), .SUM({n2, n3, n4, n5, n6, n7, n8, 
        n9}) );
  DFF_X1 cruisespeed_reg_7_ ( .D(n1460), .CK(clk), .Q(cruisespeed[7]) );
  DFF_X1 cruisespeed_reg_6_ ( .D(n1280), .CK(clk), .Q(cruisespeed[6]), .QN(
        n217) );
  DFF_X1 cruisespeed_reg_5_ ( .D(n129), .CK(clk), .Q(cruisespeed[5]), .QN(n208) );
  DFF_X1 cruisespeed_reg_4_ ( .D(n1300), .CK(clk), .Q(cruisespeed[4]), .QN(
        n1670) );
  DFF_X1 cruisespeed_reg_3_ ( .D(n1310), .CK(clk), .Q(cruisespeed[3]), .QN(
        n209) );
  DFF_X1 cruisespeed_reg_2_ ( .D(n1320), .CK(clk), .Q(cruisespeed[2]), .QN(
        n1690) );
  DFF_X1 cruisespeed_reg_1_ ( .D(n1330), .CK(clk), .Q(cruisespeed[1]), .QN(
        n1680) );
  DFF_X1 cruisespeed_reg_0_ ( .D(n1470), .CK(clk), .Q(cruisespeed[0]), .QN(
        n218) );
  DFF_X1 cruisectrl_reg ( .D(n1340), .CK(clk), .Q(cruisectrl), .QN(n18) );
  DFF_X1 state_reg_2_ ( .D(n137), .CK(clk), .Q(state[2]), .QN(n33) );
  DFF_X1 state_reg_1_ ( .D(n1350), .CK(clk), .Q(state[1]), .QN(n38) );
  DFF_X1 state_reg_0_ ( .D(n136), .CK(clk), .Q(state[0]), .QN(n39) );
  DFF_X1 speed_reg_7_ ( .D(n145), .CK(clk), .Q(speed[7]), .QN(n216) );
  DFF_X1 speed_reg_0_ ( .D(n144), .CK(clk), .Q(speed[0]), .QN(N70) );
  DFF_X1 speed_reg_6_ ( .D(n138), .CK(clk), .Q(speed[6]), .QN(n215) );
  DFF_X1 speed_reg_5_ ( .D(n139), .CK(clk), .Q(speed[5]), .QN(n155) );
  DFF_X1 speed_reg_4_ ( .D(n140), .CK(clk), .Q(speed[4]), .QN(n213) );
  DFF_X1 speed_reg_3_ ( .D(n141), .CK(clk), .Q(speed[3]), .QN(n154) );
  DFF_X1 speed_reg_2_ ( .D(n142), .CK(clk), .Q(speed[2]), .QN(n211) );
  DFF_X1 speed_reg_1_ ( .D(n143), .CK(clk), .Q(speed[1]), .QN(n210) );
  NOR3_X1 U124 ( .A1(n39), .A2(state[2]), .A3(n38), .ZN(n81) );
  OAI22_X1 U125 ( .A1(n235), .A2(n234), .B1(resume), .B2(n720), .ZN(n90) );
  INV_X1 U126 ( .A(n111), .ZN(n222) );
  AOI211_X1 U127 ( .C1(n233), .C2(n83), .A(n86), .B(n227), .ZN(n111) );
  INV_X1 U128 ( .A(n112), .ZN(n227) );
  AOI221_X1 U129 ( .B1(n81), .B2(n80), .C1(N190), .C2(n113), .A(n101), .ZN(
        n112) );
  NAND2_X1 U130 ( .A1(n222), .A2(n223), .ZN(n88) );
  NOR2_X1 U131 ( .A1(n109), .A2(n102), .ZN(n115) );
  NAND2_X1 U132 ( .A1(n115), .A2(n110), .ZN(n80) );
  OAI21_X1 U133 ( .B1(n104), .B2(n235), .A(n225), .ZN(n89) );
  INV_X1 U134 ( .A(n760), .ZN(n225) );
  AOI211_X1 U135 ( .C1(n79), .C2(n188), .A(n109), .B(n230), .ZN(n104) );
  INV_X1 U136 ( .A(n126), .ZN(n224) );
  OAI21_X1 U137 ( .B1(n115), .B2(n235), .A(n66), .ZN(n126) );
  AND2_X1 U138 ( .A1(n109), .A2(n125), .ZN(n51) );
  AND2_X1 U139 ( .A1(n102), .A2(n125), .ZN(n50) );
  NOR2_X1 U140 ( .A1(n235), .A2(n127), .ZN(n84) );
  OAI211_X1 U141 ( .C1(n105), .C2(n236), .A(n106), .B(n226), .ZN(n760) );
  INV_X1 U142 ( .A(n107), .ZN(n226) );
  NOR2_X1 U143 ( .A1(n710), .A2(n108), .ZN(n105) );
  OAI22_X1 U144 ( .A1(n720), .A2(n233), .B1(n700), .B2(n229), .ZN(n107) );
  NAND4_X1 U145 ( .A1(n116), .A2(n117), .A3(n700), .A4(n223), .ZN(n86) );
  OR2_X1 U146 ( .A1(n106), .A2(n229), .ZN(n117) );
  NOR2_X1 U147 ( .A1(n64), .A2(n84), .ZN(n116) );
  NOR2_X1 U148 ( .A1(n229), .A2(n108), .ZN(n710) );
  NAND2_X1 U149 ( .A1(n740), .A2(n223), .ZN(n68) );
  AND3_X1 U150 ( .A1(n231), .A2(n229), .A3(n114), .ZN(n79) );
  AND3_X1 U151 ( .A1(n79), .A2(n81), .A3(N189), .ZN(n101) );
  INV_X1 U152 ( .A(n78), .ZN(n228) );
  OAI21_X1 U153 ( .B1(n79), .B2(n80), .A(n81), .ZN(n78) );
  INV_X1 U154 ( .A(n110), .ZN(n230) );
  INV_X1 U155 ( .A(n81), .ZN(n235) );
  INV_X1 U156 ( .A(n195), .ZN(n212) );
  NAND2_X1 U157 ( .A1(n720), .A2(n235), .ZN(n113) );
  INV_X1 U158 ( .A(n1520), .ZN(n160) );
  INV_X1 U159 ( .A(n1650), .ZN(n174) );
  INV_X1 U160 ( .A(n1480), .ZN(n156) );
  INV_X1 U161 ( .A(n161), .ZN(n1700) );
  INV_X1 U162 ( .A(n1510), .ZN(n159) );
  INV_X1 U163 ( .A(n1500), .ZN(n158) );
  INV_X1 U164 ( .A(n1490), .ZN(n157) );
  INV_X1 U165 ( .A(n1640), .ZN(n173) );
  INV_X1 U166 ( .A(n162), .ZN(n171) );
  INV_X1 U167 ( .A(n163), .ZN(n172) );
  INV_X1 U168 ( .A(n200), .ZN(n214) );
  INV_X1 U169 ( .A(n197), .ZN(n219) );
  INV_X1 U170 ( .A(n64), .ZN(n236) );
  NAND2_X1 U171 ( .A1(n720), .A2(n730), .ZN(n65) );
  NOR2_X1 U172 ( .A1(cancel), .A2(brake), .ZN(n127) );
  NOR2_X1 U173 ( .A1(n232), .A2(accel), .ZN(n114) );
  INV_X1 U174 ( .A(n127), .ZN(n232) );
  OAI22_X1 U175 ( .A1(n210), .A2(n222), .B1(n96), .B2(n88), .ZN(n143) );
  AOI222_X1 U176 ( .A1(n8), .A2(n89), .B1(n210), .B2(n90), .C1(N71), .C2(n91), 
        .ZN(n96) );
  OAI22_X1 U177 ( .A1(n211), .A2(n222), .B1(n95), .B2(n88), .ZN(n142) );
  AOI222_X1 U178 ( .A1(n7), .A2(n89), .B1(N130), .B2(n90), .C1(N72), .C2(n91), 
        .ZN(n95) );
  XNOR2_X1 U179 ( .A(speed[2]), .B(speed[1]), .ZN(N130) );
  OAI22_X1 U180 ( .A1(n154), .A2(n222), .B1(n94), .B2(n88), .ZN(n141) );
  AOI222_X1 U181 ( .A1(n6), .A2(n89), .B1(N131), .B2(n90), .C1(N73), .C2(n91), 
        .ZN(n94) );
  XNOR2_X1 U182 ( .A(speed[3]), .B(r116_carry[3]), .ZN(N131) );
  OAI22_X1 U183 ( .A1(n213), .A2(n222), .B1(n93), .B2(n88), .ZN(n140) );
  AOI222_X1 U184 ( .A1(n5), .A2(n89), .B1(N132), .B2(n90), .C1(N74), .C2(n91), 
        .ZN(n93) );
  XNOR2_X1 U185 ( .A(speed[4]), .B(r116_carry[4]), .ZN(N132) );
  OAI22_X1 U186 ( .A1(n155), .A2(n222), .B1(n92), .B2(n88), .ZN(n139) );
  AOI222_X1 U187 ( .A1(n4), .A2(n89), .B1(N133), .B2(n90), .C1(N75), .C2(n91), 
        .ZN(n92) );
  XNOR2_X1 U188 ( .A(speed[5]), .B(r116_carry[5]), .ZN(N133) );
  OAI22_X1 U189 ( .A1(n215), .A2(n222), .B1(n87), .B2(n88), .ZN(n138) );
  AOI222_X1 U190 ( .A1(n3), .A2(n89), .B1(N134), .B2(n90), .C1(N76), .C2(n91), 
        .ZN(n87) );
  XNOR2_X1 U191 ( .A(speed[6]), .B(r116_carry[6]), .ZN(N134) );
  OAI22_X1 U192 ( .A1(n222), .A2(N70), .B1(n97), .B2(n88), .ZN(n144) );
  AOI222_X1 U193 ( .A1(n9), .A2(n89), .B1(speed[0]), .B2(n90), .C1(N70), .C2(
        n91), .ZN(n97) );
  OAI22_X1 U194 ( .A1(n222), .A2(n216), .B1(n98), .B2(n88), .ZN(n145) );
  AOI222_X1 U195 ( .A1(n2), .A2(n89), .B1(N135), .B2(n90), .C1(N77), .C2(n91), 
        .ZN(n98) );
  XNOR2_X1 U196 ( .A(speed[7]), .B(r116_carry[7]), .ZN(N135) );
  AND2_X1 U197 ( .A1(coast), .A2(n114), .ZN(n102) );
  AOI211_X1 U198 ( .C1(n64), .C2(n108), .A(n84), .B(reset), .ZN(n66) );
  OAI211_X1 U199 ( .C1(n233), .C2(n730), .A(n38), .B(n85), .ZN(n740) );
  NOR2_X1 U200 ( .A1(n86), .A2(n83), .ZN(n85) );
  OR4_X1 U201 ( .A1(n770), .A2(n99), .A3(n100), .A4(n101), .ZN(n91) );
  AOI21_X1 U202 ( .B1(n700), .B2(n236), .A(throttle), .ZN(n100) );
  AND2_X1 U203 ( .A1(n102), .A2(n81), .ZN(n99) );
  INV_X1 U204 ( .A(resume), .ZN(n233) );
  OR3_X1 U205 ( .A1(n224), .A2(reset), .A3(n116), .ZN(n47) );
  INV_X1 U206 ( .A(reset), .ZN(n223) );
  NAND3_X1 U207 ( .A1(n114), .A2(n231), .A3(throttle), .ZN(n110) );
  OAI22_X1 U208 ( .A1(n39), .A2(n740), .B1(n750), .B2(n68), .ZN(n136) );
  NOR3_X1 U209 ( .A1(n760), .A2(n228), .A3(n770), .ZN(n750) );
  AND3_X1 U210 ( .A1(set), .A2(N58), .A3(throttle), .ZN(n108) );
  OAI22_X1 U211 ( .A1(n33), .A2(n740), .B1(n82), .B2(n68), .ZN(n137) );
  AOI21_X1 U212 ( .B1(n83), .B2(n233), .A(n84), .ZN(n82) );
  NOR2_X1 U213 ( .A1(n235), .A2(reset), .ZN(n125) );
  OAI211_X1 U214 ( .C1(n47), .C2(n216), .A(n121), .B(n122), .ZN(n1460) );
  AOI22_X1 U215 ( .A1(N170), .A2(n50), .B1(N153), .B2(n51), .ZN(n122) );
  NAND2_X1 U216 ( .A1(cruisespeed[7]), .A2(n224), .ZN(n121) );
  OAI211_X1 U217 ( .C1(n47), .C2(n154), .A(n56), .B(n57), .ZN(n1310) );
  AOI22_X1 U218 ( .A1(N166), .A2(n50), .B1(N149), .B2(n51), .ZN(n57) );
  NAND2_X1 U219 ( .A1(cruisespeed[3]), .A2(n224), .ZN(n56) );
  OAI211_X1 U220 ( .C1(n47), .C2(n211), .A(n580), .B(n59), .ZN(n1320) );
  AOI22_X1 U221 ( .A1(N165), .A2(n50), .B1(N148), .B2(n51), .ZN(n59) );
  NAND2_X1 U222 ( .A1(cruisespeed[2]), .A2(n224), .ZN(n580) );
  OAI211_X1 U223 ( .C1(n47), .C2(n215), .A(n48), .B(n49), .ZN(n1280) );
  AOI22_X1 U224 ( .A1(N169), .A2(n50), .B1(N152), .B2(n51), .ZN(n49) );
  NAND2_X1 U225 ( .A1(cruisespeed[6]), .A2(n224), .ZN(n48) );
  OAI211_X1 U226 ( .C1(n47), .C2(n155), .A(n52), .B(n53), .ZN(n129) );
  AOI22_X1 U227 ( .A1(N168), .A2(n50), .B1(N151), .B2(n51), .ZN(n53) );
  NAND2_X1 U228 ( .A1(cruisespeed[5]), .A2(n224), .ZN(n52) );
  OAI211_X1 U229 ( .C1(n47), .C2(n210), .A(n60), .B(n61), .ZN(n1330) );
  AOI22_X1 U230 ( .A1(N164), .A2(n50), .B1(N147), .B2(n51), .ZN(n61) );
  NAND2_X1 U231 ( .A1(cruisespeed[1]), .A2(n224), .ZN(n60) );
  OAI211_X1 U232 ( .C1(n47), .C2(N70), .A(n123), .B(n124), .ZN(n1470) );
  AOI22_X1 U233 ( .A1(n218), .A2(n50), .B1(N146), .B2(n51), .ZN(n124) );
  NAND2_X1 U234 ( .A1(cruisespeed[0]), .A2(n224), .ZN(n123) );
  OAI211_X1 U235 ( .C1(n47), .C2(n213), .A(n54), .B(n55), .ZN(n1300) );
  AOI22_X1 U236 ( .A1(N167), .A2(n50), .B1(N150), .B2(n51), .ZN(n55) );
  NAND2_X1 U237 ( .A1(cruisespeed[4]), .A2(n224), .ZN(n54) );
  INV_X1 U238 ( .A(throttle), .ZN(n229) );
  NAND2_X1 U239 ( .A1(n730), .A2(n103), .ZN(n770) );
  NAND3_X1 U240 ( .A1(n81), .A2(n234), .A3(cancel), .ZN(n103) );
  AND2_X1 U241 ( .A1(accel), .A2(n127), .ZN(n109) );
  OAI21_X1 U242 ( .B1(n62), .B2(n18), .A(n63), .ZN(n1340) );
  OAI211_X1 U243 ( .C1(n64), .C2(n65), .A(n62), .B(n223), .ZN(n63) );
  OAI21_X1 U244 ( .B1(n237), .B2(n233), .A(n66), .ZN(n62) );
  INV_X1 U245 ( .A(n65), .ZN(n237) );
  INV_X1 U246 ( .A(brake), .ZN(n234) );
  NOR2_X1 U247 ( .A1(n67), .A2(n68), .ZN(n1350) );
  AOI211_X1 U248 ( .C1(resume), .C2(n65), .A(n69), .B(n228), .ZN(n67) );
  OAI22_X1 U249 ( .A1(throttle), .A2(n700), .B1(n710), .B2(n236), .ZN(n69) );
  INV_X1 U250 ( .A(coast), .ZN(n231) );
  INV_X1 U251 ( .A(n188), .ZN(N189) );
  INV_X1 U252 ( .A(n187), .ZN(n221) );
  INV_X1 U253 ( .A(n180), .ZN(n220) );
  OR2_X1 U254 ( .A1(speed[2]), .A2(speed[1]), .ZN(r116_carry[3]) );
  OR2_X1 U255 ( .A1(speed[3]), .A2(r116_carry[3]), .ZN(r116_carry[4]) );
  OR2_X1 U256 ( .A1(speed[4]), .A2(r116_carry[4]), .ZN(r116_carry[5]) );
  OR2_X1 U257 ( .A1(speed[5]), .A2(r116_carry[5]), .ZN(r116_carry[6]) );
  OR2_X1 U258 ( .A1(speed[6]), .A2(r116_carry[6]), .ZN(r116_carry[7]) );
  NOR3_X1 U259 ( .A1(state[1]), .A2(state[2]), .A3(n39), .ZN(n64) );
  NAND3_X1 U260 ( .A1(n39), .A2(n38), .A3(state[2]), .ZN(n720) );
  OAI21_X1 U261 ( .B1(n118), .B2(n730), .A(n720), .ZN(n83) );
  NOR2_X1 U262 ( .A1(n119), .A2(n120), .ZN(n118) );
  NAND4_X1 U263 ( .A1(n213), .A2(n155), .A3(n215), .A4(n216), .ZN(n119) );
  NAND4_X1 U264 ( .A1(N70), .A2(n210), .A3(n211), .A4(n154), .ZN(n120) );
  NAND3_X1 U265 ( .A1(n39), .A2(n33), .A3(state[1]), .ZN(n700) );
  NAND3_X1 U266 ( .A1(state[0]), .A2(n38), .A3(state[2]), .ZN(n730) );
  NAND3_X1 U267 ( .A1(n38), .A2(n33), .A3(n39), .ZN(n106) );
  NOR2_X1 U268 ( .A1(speed[1]), .A2(speed[0]), .ZN(n1480) );
  OAI21_X1 U269 ( .B1(N70), .B2(n210), .A(n156), .ZN(N71) );
  NOR2_X1 U270 ( .A1(n156), .A2(speed[2]), .ZN(n1490) );
  OAI21_X1 U271 ( .B1(n1480), .B2(n211), .A(n157), .ZN(N72) );
  NOR2_X1 U272 ( .A1(n157), .A2(speed[3]), .ZN(n1500) );
  OAI21_X1 U273 ( .B1(n1490), .B2(n154), .A(n158), .ZN(N73) );
  NOR2_X1 U274 ( .A1(n158), .A2(speed[4]), .ZN(n1510) );
  OAI21_X1 U275 ( .B1(n1500), .B2(n213), .A(n159), .ZN(N74) );
  NOR2_X1 U276 ( .A1(n159), .A2(speed[5]), .ZN(n1520) );
  OAI21_X1 U277 ( .B1(n1510), .B2(n155), .A(n160), .ZN(N75) );
  XOR2_X1 U278 ( .A(speed[6]), .B(n1520), .Z(N76) );
  NOR2_X1 U279 ( .A1(speed[6]), .A2(n160), .ZN(n1530) );
  XOR2_X1 U280 ( .A(speed[7]), .B(n1530), .Z(N77) );
  NOR2_X1 U281 ( .A1(cruisespeed[1]), .A2(cruisespeed[0]), .ZN(n161) );
  OAI21_X1 U282 ( .B1(n218), .B2(n1680), .A(n1700), .ZN(N164) );
  NOR2_X1 U283 ( .A1(n1700), .A2(cruisespeed[2]), .ZN(n162) );
  OAI21_X1 U284 ( .B1(n161), .B2(n1690), .A(n171), .ZN(N165) );
  NOR2_X1 U285 ( .A1(n171), .A2(cruisespeed[3]), .ZN(n163) );
  OAI21_X1 U286 ( .B1(n162), .B2(n209), .A(n172), .ZN(N166) );
  NOR2_X1 U287 ( .A1(n172), .A2(cruisespeed[4]), .ZN(n1640) );
  OAI21_X1 U288 ( .B1(n163), .B2(n1670), .A(n173), .ZN(N167) );
  NOR2_X1 U289 ( .A1(n173), .A2(cruisespeed[5]), .ZN(n1650) );
  OAI21_X1 U290 ( .B1(n1640), .B2(n208), .A(n174), .ZN(N168) );
  XOR2_X1 U291 ( .A(cruisespeed[6]), .B(n1650), .Z(N169) );
  NOR2_X1 U292 ( .A1(cruisespeed[6]), .A2(n174), .ZN(n1660) );
  XOR2_X1 U293 ( .A(cruisespeed[7]), .B(n1660), .Z(N170) );
  NOR2_X1 U294 ( .A1(speed[7]), .A2(speed[6]), .ZN(n177) );
  AND3_X1 U295 ( .A1(speed[3]), .A2(speed[2]), .A3(speed[1]), .ZN(n175) );
  OAI21_X1 U296 ( .B1(n175), .B2(speed[4]), .A(speed[5]), .ZN(n176) );
  NAND2_X1 U297 ( .A1(n177), .A2(n176), .ZN(N58) );
  NAND2_X1 U298 ( .A1(cruisespeed[7]), .A2(n216), .ZN(n205) );
  NOR2_X1 U299 ( .A1(n213), .A2(cruisespeed[4]), .ZN(n182) );
  AND2_X1 U300 ( .A1(speed[5]), .A2(n208), .ZN(n201) );
  NOR2_X1 U301 ( .A1(n182), .A2(n201), .ZN(n185) );
  OR2_X1 U302 ( .A1(n211), .A2(cruisespeed[2]), .ZN(n181) );
  NAND2_X1 U303 ( .A1(cruisespeed[2]), .A2(n211), .ZN(n191) );
  NAND2_X1 U304 ( .A1(n181), .A2(n191), .ZN(n192) );
  NAND2_X1 U305 ( .A1(speed[0]), .A2(n218), .ZN(n179) );
  OR2_X1 U306 ( .A1(n210), .A2(n179), .ZN(n178) );
  AOI22_X1 U307 ( .A1(n210), .A2(n179), .B1(n178), .B2(cruisespeed[1]), .ZN(
        n180) );
  NAND2_X1 U308 ( .A1(speed[3]), .A2(n209), .ZN(n194) );
  OAI211_X1 U309 ( .C1(n192), .C2(n220), .A(n194), .B(n181), .ZN(n183) );
  NOR2_X1 U310 ( .A1(n209), .A2(speed[3]), .ZN(n195) );
  AND2_X1 U311 ( .A1(cruisespeed[4]), .A2(n213), .ZN(n198) );
  NOR2_X1 U312 ( .A1(n182), .A2(n198), .ZN(n199) );
  NAND3_X1 U313 ( .A1(n183), .A2(n212), .A3(n199), .ZN(n184) );
  NOR2_X1 U314 ( .A1(n208), .A2(speed[5]), .ZN(n200) );
  AOI21_X1 U315 ( .B1(n185), .B2(n184), .A(n200), .ZN(n186) );
  XNOR2_X1 U316 ( .A(speed[6]), .B(cruisespeed[6]), .ZN(n203) );
  AOI22_X1 U317 ( .A1(speed[6]), .A2(n217), .B1(n186), .B2(n203), .ZN(n187) );
  NOR2_X1 U318 ( .A1(n216), .A2(cruisespeed[7]), .ZN(n207) );
  AOI21_X1 U319 ( .B1(n205), .B2(n221), .A(n207), .ZN(n188) );
  NOR2_X1 U320 ( .A1(n218), .A2(speed[0]), .ZN(n1890) );
  AND2_X1 U321 ( .A1(n1890), .A2(n210), .ZN(n1900) );
  OAI22_X1 U322 ( .A1(n1900), .A2(cruisespeed[1]), .B1(n210), .B2(n1890), .ZN(
        n193) );
  OAI21_X1 U323 ( .B1(n193), .B2(n192), .A(n191), .ZN(n196) );
  OAI21_X1 U324 ( .B1(n196), .B2(n195), .A(n194), .ZN(n197) );
  AOI21_X1 U325 ( .B1(n219), .B2(n199), .A(n198), .ZN(n202) );
  AOI21_X1 U326 ( .B1(n202), .B2(n214), .A(n201), .ZN(n204) );
  AOI22_X1 U327 ( .A1(cruisespeed[6]), .A2(n215), .B1(n204), .B2(n203), .ZN(
        n206) );
  OAI21_X1 U328 ( .B1(n207), .B2(n206), .A(n205), .ZN(N190) );
endmodule

