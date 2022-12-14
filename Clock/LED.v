`timescale 1ns / 1ps

//handle the led output for the 'filling of the reservoir'

module LED(input CLOCK, output full, output reg [12:0] LED = 13'b0000000000000);
    
    wire C2;
    wire [2:0]C;
    reg [6:0] COUNT = 7'b000000;
    ledtimer(CLOCK, C2);
    evl(C2, C); // count the interval btw when a new led should be ON
    
    assign full=(LED==13'b1111111111111)?1:0;
    
    always @ (posedge C2) begin

        COUNT <= (COUNT + 1);

        case(C)

            3'b000:
                begin //this section is called when 1 more led is ON
                LED[11:0]<= (COUNT>=7'b1100000)?LED[11:0]>>1|13'b1111111111111:
                            (COUNT>=7'b1011001)?LED[11:0]>>1|13'b0111111111111://89
                            (COUNT>=7'b1010010)?LED[11:0]>>1|13'b0011111111111://82
                            (COUNT>=7'b1001011)?LED[11:0]>>1|13'b0001111111111://75
                            (COUNT>=7'b1000100)?LED[11:0]>>1|13'b0000111111111://68
                            (COUNT>=7'b0111101)?LED[11:0]>>1|13'b0000011111111://61
                            (COUNT>=7'b0110110)?LED[11:0]>>1|13'b0000001111111://54
                            (COUNT>=7'b0101111)?LED[11:0]>>1|13'b0000000111111://47
                            (COUNT>=7'b0101000)?LED[11:0]>>1|13'b0000000011111://40
                            (COUNT>=7'b0100001)?LED[11:0]>>1|13'b0000000001111://33
                            (COUNT>=7'b0011010)?LED[11:0]>>1|13'b0000000000111://26
                            (COUNT>=7'b0010011)?LED[11:0]>>1|13'b0000000000011://19
                            (COUNT>=7'b0001100)?LED[11:0]>>1|13'b0000000000001://12
                            LED[11:0]>>1;
                LED[12]<=1'b1;
                end

            default:LED<=(COUNT>=7'b1100000)?LED>>1|13'b1111111111111: //does the bit shifting to move the led, or with a pattern to keep the required led on
                    (COUNT>=7'b1011001)?LED>>1|13'b0111111111111://89
                    (COUNT>=7'b1010010)?LED>>1|13'b0011111111111://82
                    (COUNT>=7'b1001011)?LED>>1|13'b0001111111111://75
                    (COUNT>=7'b1000100)?LED>>1|13'b0000111111111://68
                    (COUNT>=7'b0111101)?LED>>1|13'b0000011111111://61
                    (COUNT>=7'b0110110)?LED>>1|13'b0000001111111://54
                    (COUNT>=7'b0101111)?LED>>1|13'b0000000111111://47
                    (COUNT>=7'b0101000)?LED>>1|13'b0000000011111://40
                    (COUNT>=7'b0100001)?LED>>1|13'b0000000001111://33
                    (COUNT>=7'b0011010)?LED>>1|13'b0000000000111://26
                    (COUNT>=7'b0010011)?LED>>1|13'b0000000000011://19
                    (COUNT>=7'b0001100)?LED>>1|13'b0000000000001://12
                    LED>>1;
        endcase
    end
               
endmodule
