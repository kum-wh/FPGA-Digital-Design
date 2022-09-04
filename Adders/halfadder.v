`timescale 1ns / 1ps

//adder without carry in

module halfadder(
    input A,
    input B,
    output S,
    output Cout
    );
    
    assign S = A ^ B; //LSB logic for adder
    assign Cout = A & B; //Carry Out Bit
    
endmodule
