`timescale 1ns / 1ps

//1bit parallel subtractor

module fullbitt(
    input A,
    input B,
    input Cin,
    output S
    );

    assign S = A^B^Cin; //XOR logic

endmodule
