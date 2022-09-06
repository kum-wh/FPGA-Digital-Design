`timescale 1ns / 1ps

//draw a waiting screen

module drawwait(input clk, [12:0] index, output reg [15:0] data );

    reg [15:0] A [6143:0];

    initial begin
       $readmemh("wait.mem",A);  //wait.mem is missing
    end
    always @ (posedge clk) begin
        data <= A[index];
    end

endmodule


