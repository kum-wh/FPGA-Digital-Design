`timescale 1ns / 1ps

//adder with carry in

module fullbit(
    input A,
    input B,
    input Cin,
    output S,
    output Cout
    );
    
    assign S = A^B^Cin; //LSB logic
    assign Cout = (A & B) | ( Cin & ( A ^ B ) ); // Carry out logic
    
endmodule
