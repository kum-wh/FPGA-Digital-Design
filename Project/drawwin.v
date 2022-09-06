`timescale 1ns / 1ps

//displays a win screen

module drawwin(input clk, [12:0] index, output reg [15:0] data);

    reg [15:0] A [6143:0];

    initial begin
       $readmemh("win.mem",A);
    end
    
    always @ (posedge clk) begin
        data <= A[index];
    end

endmodule
