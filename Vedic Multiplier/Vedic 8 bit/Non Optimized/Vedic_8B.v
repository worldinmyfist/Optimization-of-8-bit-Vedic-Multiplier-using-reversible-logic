`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:32:25 11/10/2019 
// Design Name: 
// Module Name:    Vedic_8B 
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
module ha(input x,input y, output sum, output carry);
assign sum = x^y;
assign carry = x&y;
endmodule

module fourba(input [3:0]x,input [3:0]y,output [3:0]sum);
assign alpha1 = x[0]&y[0];
assign alpha2 = x[1]&y[1];
assign alpha3 = x[2]&y[2];
assign beta1 = x[0]^y[0];
assign beta2 = x[1]^y[1];
assign beta3 = x[2]^y[2];
assign beta4 = x[3]^y[3];
assign sum[0] = beta1;
assign sum[1] = (beta2)^(alpha1);
assign sum[2] = (beta3)^((alpha2)|((beta2)&alpha1));
assign sum[3] = (beta4)^((alpha3)|((beta3)&((alpha2)|((beta2)&alpha1))));
endmodule

module sixba(input [5:0]x,input [5:0]y,output [5:0]sum);
assign alpha1 = x[0]&y[0];
assign alpha2 = x[1]&y[1];
assign alpha3 = x[2]&y[2];
assign alpha4 = x[3]&y[3];
assign alpha5 = x[4]&y[4];
assign beta1 = x[0]^y[0];
assign beta2 = x[1]^y[1];
assign beta3 = x[2]^y[2];
assign beta4 = x[3]^y[3];
assign beta5 = x[4]^y[4];
assign beta6 = x[5]^y[5];
assign sum[0] = beta1;
assign sum[1] = (beta2)^(alpha1);
assign sum[2] = (beta3)^((alpha2)|((beta2)&alpha1));
assign sum[3] = (beta4)^((alpha3)|((beta3)&((alpha2)|((beta2)&alpha1))));
assign sum[4] = (beta5)^((alpha4)|((beta4)&((alpha3)|((beta3)&((alpha2)|((beta2)&alpha1))))));
assign sum[5] = (beta6)^((alpha5)|((beta5)&((alpha4)|((beta4)&((alpha3)|((beta3)&((alpha2)|((beta2)&alpha1))))))));
endmodule

module eightba(input [7:0]x,input [7:0]y,output [7:0]sum);
assign alpha1 = x[0]&y[0];
assign alpha2 = x[1]&y[1];
assign alpha3 = x[2]&y[2];
assign alpha4 = x[3]&y[3];
assign alpha5 = x[4]&y[4];
assign alpha6 = x[5]&y[5];
assign alpha7 = x[6]&y[6];
assign beta1 = x[0]^y[0];
assign beta2 = x[1]^y[1];
assign beta3 = x[2]^y[2];
assign beta4 = x[3]^y[3];
assign beta5 = x[4]^y[4];
assign beta6 = x[5]^y[5];
assign beta7 = x[6]^y[6];
assign beta8 = x[7]^y[7];
assign sum[0] = beta1;
assign sum[1] = (beta2)^(alpha1);
assign sum[2] = (beta3)^((alpha2)|((beta2)&alpha1));
assign sum[3] = (beta4)^((alpha3)|((beta3)&((alpha2)|((beta2)&alpha1))));
assign sum[4] = (beta5)^((alpha4)|((beta4)&((alpha3)|((beta3)&((alpha2)|((beta2)&alpha1))))));
assign sum[5] = (beta6)^((alpha5)|((beta5)&((alpha4)|((beta4)&((alpha3)|((beta3)&((alpha2)|((beta2)&alpha1))))))));
assign sum[6] = (beta7)^((alpha6)|((beta6)&((alpha5)|((beta5)&((alpha4)|((beta4)&((alpha3)|((beta3)&((alpha2)|((beta2)&alpha1))))))))));
assign sum[7] = (beta8)^((alpha7)|((beta7)&((alpha6)|((beta6)&((alpha5)|((beta5)&((alpha4)|((beta4)&((alpha3)|((beta3)&((alpha2)|((beta2)&alpha1))))))))))));
endmodule

module twelveba(input [11:0]x,input [11:0]y,output [11:0]sum);
assign alpha1 = x[0]&y[0];
assign alpha2 = x[1]&y[1];
assign alpha3 = x[2]&y[2];
assign alpha4 = x[3]&y[3];
assign alpha5 = x[4]&y[4];
assign alpha6 = x[5]&y[5];
assign alpha7 = x[6]&y[6];
assign alpha8 = x[7]&y[7];
assign alpha9 = x[8]&y[8];
assign alpha10 = x[9]&y[9];
assign alpha11 = x[10]&y[10];
assign beta1 = x[0]^y[0];
assign beta2 = x[1]^y[1];
assign beta3 = x[2]^y[2];
assign beta4 = x[3]^y[3];
assign beta5 = x[4]^y[4];
assign beta6 = x[5]^y[5];
assign beta7 = x[6]^y[6];
assign beta8 = x[7]^y[7];
assign beta9 = x[8]^y[8];
assign beta10 = x[9]^y[9];
assign beta11 = x[10]^y[10];
assign beta12 = x[11]^y[11];
assign sum[0] = beta1;
assign sum[1] = (beta2)^(alpha1);
assign sum[2] = (beta3)^((alpha2)|((beta2)&alpha1));
assign sum[3] = (beta4)^((alpha3)|((beta3)&((alpha2)|((beta2)&alpha1))));
assign sum[4] = (beta5)^((alpha4)|((beta4)&((alpha3)|((beta3)&((alpha2)|((beta2)&alpha1))))));
assign sum[5] = (beta6)^((alpha5)|((beta5)&((alpha4)|((beta4)&((alpha3)|((beta3)&((alpha2)|((beta2)&alpha1))))))));
assign sum[6] = (beta7)^((alpha6)|((beta6)&((alpha5)|((beta5)&((alpha4)|((beta4)&((alpha3)|((beta3)&((alpha2)|((beta2)&alpha1))))))))));
assign sum[7] = (beta8)^((alpha7)|((beta7)&((alpha6)|((beta6)&((alpha5)|((beta5)&((alpha4)|((beta4)&((alpha3)|((beta3)&((alpha2)|((beta2)&alpha1))))))))))));
assign sum[8] = (beta9)^((alpha8)|((beta8)&((alpha7)|((beta7)&((alpha6)|((beta6)&((alpha5)|((beta5)&((alpha4)|((beta4)&((alpha3)|((beta3)&((alpha2)|((beta2)&alpha1))))))))))))));
assign sum[9] = (beta10)^((alpha9)|((beta9)&((alpha8)|((beta8)&((alpha7)|((beta7)&((alpha6)|((beta6)&((alpha5)|((beta5)&((alpha4)|((beta4)&((alpha3)|((beta3)&((alpha2)|((beta2)&alpha1))))))))))))))));
assign sum[10] = (beta11)^((alpha10)|((beta10)&((alpha9)|((beta9)&((alpha8)|((beta8)&((alpha7)|((beta7)&((alpha6)|((beta6)&((alpha5)|((beta5)&((alpha4)|((beta4)&((alpha3)|((beta3)&((alpha2)|((beta2)&alpha1))))))))))))))))));
assign sum[11] = (beta12)^((alpha11)|((beta11)&((alpha10)|((beta10)&((alpha9)|((beta9)&((alpha8)|((beta8)&((alpha7)|((beta7)&((alpha6)|((beta6)&((alpha5)|((beta5)&((alpha4)|((beta4)&((alpha3)|((beta3)&((alpha2)|((beta2)&alpha1))))))))))))))))))));
endmodule

module vedic_2_x_2(input [1:0]a,input [1:0]b,output [3:0]c);
assign c[0] = a[0]&b[0];
ha z1((a[1]&b[0]),(a[0]&b[1]),c[1],temp);
ha z2(temp,(a[1]&b[1]),c[2],c[3]);
endmodule

module vedic_4_x_4(input [3:0]a,input [3:0]b,output [7:0]c);
wire [3:0]q0;
wire [3:0]q1;
wire [3:0]q2;
wire [3:0]q3;
wire [3:0]temp1;
wire [5:0]temp2;
wire [5:0]temp3;
wire [5:0]temp4;
wire [3:0]q4;
wire [5:0]q5;
wire [5:0]q6;
vedic_2_x_2 z1(a[1:0],b[1:0],q0[3:0]);
vedic_2_x_2 z2(a[3:2],b[1:0],q1[3:0]);
vedic_2_x_2 z3(a[1:0],b[3:2],q2[3:0]);
vedic_2_x_2 z4(a[3:2],b[3:2],q3[3:0]);
//Stage 1 Adders
assign temp1 ={2'b0,q0[3:2]};
fourba z5(q1[3:0],temp1,q4);
assign temp2 ={2'b0,q2[3:0]};
assign temp3 ={q3[3:0],2'b0};
sixba z6(temp2,temp3,q5);
assign temp4={2'b0,q4[3:0]};
//Stage 2 Adder 
sixba z7(temp4,q5,q6);
//Final Output 
assign c[1:0]=q0[1:0];
assign c[7:2]=q6[5:0];
endmodule

module Vedic_8B(input [7:0]a,input [7:0]b,output [15:0]c);
wire [7:0]q0;	
wire [7:0]q1;	
wire [7:0]q2;
wire [7:0]q3;	
wire [7:0]temp1;
wire [11:0]temp2;
wire [11:0]temp3;
wire [11:0]temp4;
wire [7:0]q4;
wire [11:0]q5;
wire [11:0]q6;
vedic_4_x_4 z1(a[3:0],b[3:0],q0[7:0]);
vedic_4_x_4 z2(a[7:4],b[3:0],q1[7:0]);
vedic_4_x_4 z3(a[3:0],b[7:4],q2[7:0]);
vedic_4_x_4 z4(a[7:4],b[7:4],q3[7:0]);
//Stage 1 Adders 
assign temp1 ={4'b0,q0[7:4]};
eightba z5(q1[7:0],temp1,q4);
assign temp2 ={4'b0,q2[7:0]};
assign temp3 ={q3[7:0],4'b0};
twelveba z6(temp2,temp3,q5);
assign temp4={4'b0,q4[7:0]};
//Stage 2 Adder
twelveba z7(temp4,q5,q6);
//Final Output 
assign c[3:0]=q0[3:0];
assign c[15:4]=q6[11:0];
endmodule
