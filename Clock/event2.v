`timescale 1ns / 1ps

//handles the seven seg displays

module event2(input CLOCK, input full, output [7:0] seg);

    wire C1;

    watch(CLOCK,C1);

    //sevenseg(C1, full, seg); //Missing File
    
endmodule
