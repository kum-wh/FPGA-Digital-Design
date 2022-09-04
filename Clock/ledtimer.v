`timescale 1ns / 1ps

//clock divider from led output

module ledtimer(input CLOCK, output reg timer2 = 0);

    reg [23:0]COUNT2 = 24'b0;

    always @(posedge CLOCK) begin
        COUNT2 <= COUNT2 + 1;
        timer2 <= (COUNT2==24'b0)?~timer2:timer2;//3HZ
    end

endmodule
