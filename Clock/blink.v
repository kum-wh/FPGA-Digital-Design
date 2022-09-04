`timescale 1ns / 1ps

//handle blinking of led 12 after the 'reservoir' is filled

module blink(input CLOCK, output reg led12 = 0 , output [11:0] LED);

    assign LED = 12'b111111111111; //set the rest of led to on since it 'full'
    reg [27:0] COUNT = 28'b0;

    always @ (posedge CLOCK) begin //clock divider mth to toggle led on and off
        COUNT <= (COUNT + 1);
        led12 <= ( COUNT == 28'b0 ) ? ~led12 : led12 ;
    end
    
endmodule
