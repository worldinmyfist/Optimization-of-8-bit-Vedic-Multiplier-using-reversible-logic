`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:43:39 11/24/2019 
// Design Name: 
// Module Name:    Vedic_4B_Rev 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module FG_Rev(input x1, input x2, output y1, output y2);
assign y1 = x1;
assign y2 = x1^x2;
endmodule

module PG_Rev(input x1, input x2, input x3, output y1, output y2, output y3);
assign y1 = x1;
assign y2 = x1^x2;
assign y3 = x1&x2^x3;
endmodule

module HNG_Rev(input x1, input x2, input x3, input x4, output y1, output y2, output y3, output y4);
assign y1 = x1;
assign y2 = x2;
assign y3 = x1^x2^x3;
assign y4 = (x1^x2)&x3^x1&x2^x4;
endmodule

module BVPPG_Rev(input x1, input x2, input x3, input x4, input x5, output y1, output y2, output y3, output y4, output y5);
assign y1 = x1;
assign y2 = x2;
assign y3 = x1&x2^x3;
assign y4 = x4;
assign y5 = x1&x4^x5;
endmodule

module FA_two_Rev(input a1, input a2, input b1, input b2, output y1, output y2, output c);
PG_Rev lev1(b1,a1,1'b0,g1,y1,j1);
HNG_Rev lev2(j1,b2,a2,1'b0,g2,g3,y2,c);
endmodule

module FA_four_Rev(input a1, input a2, input a3, input a4, input b1, input b2, input b3, input b4, output y1, output y2, output y3, output y4, output c);
PG_Rev level1(b1,a1,1'b0,g1,y1,j1);
HNG_Rev level2(j1,b2,a2,1'b0,g2,g3,y2,j2);
HNG_Rev level3(j2,b3,a3,1'b0,g4,g5,y3,j3);
HNG_Rev level4(j3,b4,a4,1'b0,g6,g7,y4,c);
endmodule

module FA_eight_Rev(input a1,input a2,input a3,input a4,input a5,input a6,input a7,input a8,input b1,input b2,input b3,input b4,input b5,input b6,input b7,input b8,output y1,output y2,output y3,output y4,output y5,output y6,output y7,output y8,output c);
PG_Rev leve1(b1,a1,1'b0,g1,y1,j1);
HNG_Rev leve2(j1,b2,a2,1'b0,g2,g3,y2,j2);
HNG_Rev leve3(j2,b3,a3,1'b0,g4,g5,y3,j3);
HNG_Rev leve4(j3,b4,a4,1'b0,g6,g7,y4,j4);
HNG_Rev leve5(j4,b5,a5,1'b0,g8,g9,y5,j5);
HNG_Rev leve6(j5,b6,a6,1'b0,g10,g11,y6,j6);
HNG_Rev leve7(j6,b7,a7,1'b0,g12,g13,y7,j7);
HNG_Rev leve8(j7,b8,a8,1'b0,g14,g15,y8,c);
endmodule

module HA(input a, input b, output s, output c);
PG_Rev number1(a,b,1'b0,g,s,c);
endmodule

module Vedic_2B_Rev(input a1, input a2, input b1, input b2, output y1, output y2, output y3, output y4);
wire i1;
wire i2;
wire j1;
wire j2;
wire j3;
wire j4;
BVPPG_Rev lev11(a1,b1,1'b0,b2,1'b0,g1,i1,y1,i2,j1);
PG_Rev lev12(a2,i1,1'b0,i3,g2,j2);
PG_Rev lev13(i3,i2,1'b0,g3,g4,j3);
PG_Rev lev21(j1,j2,1'b0,g5,y2,j4);
FG_Rev lev22(j4,j3,y3,y4);
endmodule

module Vedic_4B_Rev(input a1, input a2, input a3, input a4, input b1, input b2, input b3, input b4, output y1, output y2, output y3, output y4, output y5, output y6, output y7 ,output y8);
Vedic_2B_Rev num1(a3,a4,b3,b4,l1,l2,l3,l4);
Vedic_2B_Rev num2(a1,a2,b3,b4,m1,m2,m3,m4);
Vedic_2B_Rev num3(a3,a4,b1,b2,n1,n2,n3,n4);
Vedic_2B_Rev num4(a1,a2,b1,b2,o1,o2,o3,o4);
assign y1 = o1;
assign y2 = o2;
FA_four_Rev num5(m1,m2,m3,m4,n1,n2,n3,n4,p1,p2,p3,p4,c1);
FA_four_Rev num6(p1,p2,p3,p4,o3,o4,1'b0,1'b0,q1,q2,q3,q4,c2);
assign y3 = q1;
assign y4 = q2;
FA_four_Rev num7(q3,q4,1'b0,c1,l1,l2,l3,l4,y5,y6,y7,y8,c3);
endmodule

module Vedic_8B_Rev(input [7:0]a, input [7:0]b, output [15:0]y);
Vedic_4B_Rev index1(a[0],a[1],a[2],a[3],b[0],b[1],b[2],b[3],y[0],y[1],y[2],y[3],q4,q5,q6,q7);
Vedic_4B_Rev index2(a[0],a[1],a[2],a[3],b[4],b[5],b[6],b[7],r0,r1,r2,r3,r4,r5,r6,r7);
Vedic_4B_Rev index3(a[4],a[5],a[6],a[7],b[0],b[1],b[2],b[3],s0,s1,s2,s3,s4,s5,s6,s7);
Vedic_4B_Rev index4(a[4],a[5],a[6],a[7],b[4],b[5],b[6],b[7],t0,t1,t2,t3,t4,t5,t6,t7);
FA_eight_Rev index5(r0,r1,r2,r3,r4,r5,r6,r7,s0,s1,s2,s3,s4,s5,s6,s7,u0,u1,u2,u3,u4,u5,u6,u7,c1);
FA_eight_Rev index6(u0,u1,u2,u3,u4,u5,u6,u7,q4,q5,q6,q7,1'b0,1'b0,1'b0,1'b0,y[4],y[5],y[6],y[7],v4,v5,v6,v7,c2);
FA_eight_Rev index7(t0,t1,t2,t3,t4,t5,t6,t7,v4,v5,v6,v7,1'b0,1'b0,1'b0,c1,y[8],y[9],y[10],y[11],y[12],y[13],y[14],y[15],c3);
endmodule

