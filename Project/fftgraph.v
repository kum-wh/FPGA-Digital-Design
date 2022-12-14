`timescale 1ns / 1ps

//draw a graph based to display the detected frequency

module fftgraph(input clk, [15:0] bin1, [15:0] bin2, [15:0] bin3, [15:0] bin4, [12:0] index, output reg [15:0] data );

    always @ (posedge clk) begin

        if(index%96<16)begin
            data<=16'b0;
        end else if ((index%96>=16)&&(index%96<=31)) begin
            case(bin1)
                16'b0000000000000000:data<=16'b0;
                16'b0000000000000001:data<=(index/96>=60)?16'b0000000000011111:16'b0;
                16'b0000000000000011:data<=(index/96>=56)?16'b0000000000011111:16'b0;
                16'b0000000000000111:data<=(index/96>=52)?16'b0000000000011111:16'b0;
                16'b0000000000001111:data<=(index/96>=48)?16'b0000000000011111:16'b0;
                16'b0000000000011111:data<=(index/96>=44)?16'b0000000000011111:16'b0;
                16'b0000000000111111:data<=(index/96>=40)?16'b0000000000011111:16'b0;
                16'b0000000001111111:data<=(index/96>=36)?16'b0000000000011111:16'b0;
                16'b0000000011111111:data<=(index/96>=32)?16'b0000000000011111:16'b0;
                16'b0000000111111111:data<=(index/96>=28)?16'b0000000000011111:16'b0;
                16'b0000001111111111:data<=(index/96>=24)?16'b0000000000011111:16'b0;
                16'b0000011111111111:data<=(index/96>=20)?16'b0000000000011111:16'b0;
                16'b0000111111111111:data<=(index/96>=16)?16'b0000000000011111:16'b0;
                16'b0001111111111111:data<=(index/96>=12)?16'b0000000000011111:16'b0;
                16'b0011111111111111:data<=(index/96>=8)?16'b0000000000011111:16'b0;
                16'b0111111111111111:data<=(index/96>=4)?16'b0000000000011111:16'b0;
                16'b1111111111111111:data<=16'b0000000000011111;    
            endcase
        end else if ((index%96>=32)&&(index%96<=47)) begin
            case(bin2)
                16'b0000000000000000:data<=16'b0;
                16'b0000000000000001:data<=(index/96>=60)?16'b0000000000011111:16'b0;
                16'b0000000000000011:data<=(index/96>=56)?16'b0000000000011111:16'b0;
                16'b0000000000000111:data<=(index/96>=52)?16'b0000000000011111:16'b0;
                16'b0000000000001111:data<=(index/96>=48)?16'b0000000000011111:16'b0;
                16'b0000000000011111:data<=(index/96>=44)?16'b0000000000011111:16'b0;
                16'b0000000000111111:data<=(index/96>=40)?16'b0000000000011111:16'b0;
                16'b0000000001111111:data<=(index/96>=36)?16'b0000000000011111:16'b0;
                16'b0000000011111111:data<=(index/96>=32)?16'b0000000000011111:16'b0;
                16'b0000000111111111:data<=(index/96>=28)?16'b0000000000011111:16'b0;
                16'b0000001111111111:data<=(index/96>=24)?16'b0000000000011111:16'b0;
                16'b0000011111111111:data<=(index/96>=20)?16'b0000000000011111:16'b0;
                16'b0000111111111111:data<=(index/96>=16)?16'b0000000000011111:16'b0;
                16'b0001111111111111:data<=(index/96>=12)?16'b0000000000011111:16'b0;
                16'b0011111111111111:data<=(index/96>=8)?16'b0000000000011111:16'b0;
                16'b0111111111111111:data<=(index/96>=4)?16'b0000000000011111:16'b0;
                16'b1111111111111111:data<=16'b0000000000011111;
            endcase
        end else if ((index%96>=48)&&(index%96<=63)) begin   
            case(bin3)
                16'b0000000000000000:data<=16'b0;
                16'b0000000000000001:data<=(index/96>=60)?16'b0000000000011111:16'b0;
                16'b0000000000000011:data<=(index/96>=56)?16'b0000000000011111:16'b0;
                16'b0000000000000111:data<=(index/96>=52)?16'b0000000000011111:16'b0;
                16'b0000000000001111:data<=(index/96>=48)?16'b0000000000011111:16'b0;
                16'b0000000000011111:data<=(index/96>=44)?16'b0000000000011111:16'b0;
                16'b0000000000111111:data<=(index/96>=40)?16'b0000000000011111:16'b0;
                16'b0000000001111111:data<=(index/96>=36)?16'b0000000000011111:16'b0;
                16'b0000000011111111:data<=(index/96>=32)?16'b0000000000011111:16'b0;
                16'b0000000111111111:data<=(index/96>=28)?16'b0000000000011111:16'b0;
                16'b0000001111111111:data<=(index/96>=24)?16'b0000000000011111:16'b0;
                16'b0000011111111111:data<=(index/96>=20)?16'b0000000000011111:16'b0;
                16'b0000111111111111:data<=(index/96>=16)?16'b0000000000011111:16'b0;
                16'b0001111111111111:data<=(index/96>=12)?16'b0000000000011111:16'b0;
                16'b0011111111111111:data<=(index/96>=8)?16'b0000000000011111:16'b0;
                16'b0111111111111111:data<=(index/96>=4)?16'b0000000000011111:16'b0;
                16'b1111111111111111:data<=16'b0000000000011111;
            endcase
        end else if ((index%96>=64)&&(index%96<=79)) begin
            case(bin4)
                16'b0000000000000000:data<=16'b0;
                16'b0000000000000001:data<=(index/96>=60)?16'b0000000000011111:16'b0;
                16'b0000000000000011:data<=(index/96>=56)?16'b0000000000011111:16'b0;
                16'b0000000000000111:data<=(index/96>=52)?16'b0000000000011111:16'b0;
                16'b0000000000001111:data<=(index/96>=48)?16'b0000000000011111:16'b0;
                16'b0000000000011111:data<=(index/96>=44)?16'b0000000000011111:16'b0;
                16'b0000000000111111:data<=(index/96>=40)?16'b0000000000011111:16'b0;
                16'b0000000001111111:data<=(index/96>=36)?16'b0000000000011111:16'b0;
                16'b0000000011111111:data<=(index/96>=32)?16'b0000000000011111:16'b0;
                16'b0000000111111111:data<=(index/96>=28)?16'b0000000000011111:16'b0;
                16'b0000001111111111:data<=(index/96>=24)?16'b0000000000011111:16'b0;
                16'b0000011111111111:data<=(index/96>=20)?16'b0000000000011111:16'b0;
                16'b0000111111111111:data<=(index/96>=16)?16'b0000000000011111:16'b0;
                16'b0001111111111111:data<=(index/96>=12)?16'b0000000000011111:16'b0;
                16'b0011111111111111:data<=(index/96>=8)?16'b0000000000011111:16'b0;
                16'b0111111111111111:data<=(index/96>=4)?16'b0000000000011111:16'b0;
                16'b1111111111111111:data<=16'b0000000000011111;
            endcase
        end else begin
            data<=16'b0;
        end
    end

endmodule
