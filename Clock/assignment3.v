`timescale 1ns / 1ps

module assignment3(input CLOCK, input [15:0]sw, output [7:0]seg, output[3:0] an, output [12:0] LED);

    wire full;
    wire empty;
    wire correct;
    wire [7:0] A;
    wire [3:0] B;
    wire [12:0] C;
    wire [12:0] D;
    wire [12:0] E;
    reg empty2 = 0;

    blink(CLOCK,E[12],E[11:0]); //set the blinking pattern
    firsthalf(CLOCK, A, B, C, full); //fill the 'reservoir'
    switch(CLOCK, full, sw, correct); //check for password
    discharge(CLOCK, correct, D, empty); //discharge the 'reservoir'

    assign LED=(empty2==1)?13'b0000000000000:(full==0)?C:(correct==0)?E:D; //mux the LEDs to the respective wire after each states change
    assign seg=A;
    assign an=(empty2==1)?4'b1111:B;

    always @ (posedge CLOCK) begin
        empty2<=(empty==1)?1:empty2; //check if the program has ended
    end

endmodule
