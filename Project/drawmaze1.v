`timescale 1ns / 1ps

//draw the maze shape with the player in another position

module drawmaze1(input clk, [12:0] index, output reg [15:0] data);

    wire [15:0] A;
    wire [15:0] B;
    wire [15:0] C;

    assign A = 16'b1111111111111111;
    assign B = 16'b0000000000000000;
    assign C = 16'b0000000000011111;

    always @ (posedge clk) begin
        
        if(index/96<=2)begin
            data<=(index%96<83)?A:(index%96>92)?A:B;
        end
        if(index%96<=2)begin
            data<=A;
        end
        if(index%96>=93)begin
            data<=A;
        end
        if(index/96>=3)begin
            if(index/96<=12)begin
                if(index%96>2)begin
                    if(index%96<93)begin
                        data<=(index%96>11)?B:C;
                    end
                end
            end
        end
        if(index/96>=13)begin
            if(index/96<=15)begin
                if(index%96>2)begin
                    if(index%96<93)begin
                        data<=(index%96<12)?B:A;
                    end
                end
            end
        end
        if(index/96>=16)begin
            if(index/96<=24)begin
                if(index%96>2)begin
                    if(index%96<93)begin
                        data<=(index%96<12)?B:(index%96>14)?B:A;
                    end
                end
            end
        end
        if(index/96>=25)begin
            if(index/96<=27)begin
                if(index%96>2)begin
                    if(index%96<93)begin
                        data<=(index%96<12)?B:((index%96>14)?((index%96>23)?A:B):A);
                    end
                end    
            end
        end
        if(index/96>=28)begin
            if(index/96<=36)begin
                if(index%96>2)begin
                    if(index%96<93)begin
                        data<=B;
                    end
                end
            end
        end
        if(index/96>=37)begin
            if(index/96<=39)begin
                if(index%96>2)begin
                    if(index%96<93)begin
                        data<=(index%96<12)?B:(index%96>=81)?B:A;
                    end
                end
            end
        end
        if(index/96>=40)begin
            if(index/96<=48)begin
                if(index%96>2)begin
                    if(index%96<93)begin
                        data<=(index%96>=81)?((index%96<=83)?A:B):B;
                    end
                end
            end
        end
        if(index/96>=49)begin
            if(index/96<=51)begin
                if(index%96>2)begin
                    if(index%96<93)begin
                        data<=(index%96<12)?B:(index%96>83)?B:(index%96>=72)?((index%96<=80)?B:A):A;
                    end
                end
            end
        end
        if(index/96>=52)begin
            if(index/96<=60)begin
                if(index%96>2)begin
                    if(index%96<93)begin
                        data<=(index%96<12)?B:(index%96>83)?B:(index%96>14)?((index%96<81)?B:A):A;
                    end
                end
            end
        end
        if(index/96>=61)begin
            if(index/96<=63)begin
                if(index%96>2)begin
                    if(index%96<93)begin
                        data<=(index%96<14)?A:(index%96>23)?A:B;
                    end
                end
            end
        end
    end

endmodule
