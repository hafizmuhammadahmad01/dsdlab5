`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/04/2024 10:54:49 PM
// Design Name: 
// Module Name: lab5
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module lab5(
    input logic [3:0] a,
    input logic [2:0] b,
    output logic seg_a,seg_b,seg_c,seg_d,seg_e,seg_f,seg_g,
    output logic an_0,an_1,an_2,an_3,an_4,an_5,an_6,an_7
    );
    assign seg_a=(a[3]|~a[1]) & (~a[2]|~a[1]) & (a[3]|~a[2]|~a[0]) & (~a[3]|a[0]) & (~a[3]|a[2]|a[1])  & (a[2]|a[0]);
    assign seg_b=(a[3]|a[1]|a[0]) & (a[2]|a[0]) & (~a[3]|a[1]|~a[0]) & (a[3]|~a[1]|~a[0]) & (a[2]|a[1]);
    assign seg_c=(~a[3]|a[2]) & (a[3]|~a[2]) & (a[3]|~a[0]) & (a[3]|a[1]) & (a[1]|~a[0]);
    assign seg_d=(~a[3]|a[1]) & (~a[2]|a[1]|~a[0]) & (a[2]|~a[1]|~a[0]) & (a[3]|a[2]|a[0]) & (~a[2]|~a[1]|a[0]);
    assign seg_e=(a[2]|a[0]) & (~a[3]|~a[2]) & (~a[3]|~a[1]) & (~a[1]|a[0]);
    assign seg_f=(~a[3]|~a[1]) & (~a[2]|a[0]) & (a[1]|a[0]) & (a[3]|~a[2]|a[1]) & (~a[3]|a[2]);
    assign seg_g=(~a[3]|a[2]) & (~a[1]|a[0]) & (~a[3]|~a[0]) & (a[2]|~a[1]) & (a[3]|~a[2]|a[1]);

    assign an_0= b[2]|b[1]|b[0];
    assign an_1= b[2]|b[1]|~b[0];
    assign an_2= b[2]|~b[1]|b[0];
    assign an_3= b[2]|~b[1]|~b[0];
    assign an_4= ~b[2]|b[1]|b[0];
    assign an_5= ~b[2]|b[1]|~b[0];
    assign an_6= ~b[2]|~b[1]|b[0];
    assign an_7= ~b[2]|~b[1]|~b[0];

endmodule