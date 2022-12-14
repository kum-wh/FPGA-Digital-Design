`timescale 1ns / 1ps

//handles the S-A-F-E printing on 7-segment

module sevenseg( input clock, start, output reg index = 0, reg [3:0]an = 4'b1111, reg [6:0]seg = 7'b0);
    
    wire C;
    reg [2:0] COUNT = 3'b0;
    
    segclock clock1(clock, start, C);
    
    always @ (posedge clock) begin
        
        index <= (COUNT==3'b101)?1:index; //counts up to when SAFE is displayed for 1.342s
    end
    
    always @ (posedge C) begin
        
        COUNT <= COUNT + 1;
        
        case(COUNT)
            
            3'b000: begin
                seg <= 7'b0010010;
                an <= 4'b0111;
            end 
            3'b001: begin 
                seg <= 7'b0001000;
                an <= 4'b1011;
            end
            3'b010: begin 
                seg <= 7'b0001110;
                an <= 4'b1101;
            end
            3'b011: begin
                seg <= 7'b0000110;
                an <= 4'b1110;
            end
            default: begin
                seg <= 7 'b0000000;
                an <= 4'b1111;
            end
        
        endcase     
    end

endmodule
