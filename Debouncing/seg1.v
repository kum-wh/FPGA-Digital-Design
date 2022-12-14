`timescale 1ns / 1ps

//handle the output and rules of 1 room

module seg1( input start, stop, clock, btn, reset, [2:0]COUNT2, [2:0] COUNT3, output stopper, trigger, reg[6:0] seg, reg [2:0]COUNT = 3'b0);
    
    wire C1; wire C2;wire C3;
    wire out; wire deallow;
    wire t1;
    reg t2;
    
    debounceclock ck1(clock, C3);
    rules ru(C3, COUNT, COUNT2, COUNT3, deallow);
    my_dff dff1 (C3, btn, C1);
    my_dff dff2 (C3, C1, C2);
    
    assign out = (stop==1)?0:(C1 & (~C2)); //single output pulse for btn
    assign t1 = (COUNT==3'b100)?1:0; //check if there is more than 3 people
    assign trigger = t1 | t2; //indicate that rule for the room is broken
    assign stopper = (seg==7'b0110110)?1:0; //indicate that room is full
    
    always @ (posedge C3) begin
        
        COUNT <= (start==0)?0:(reset==1)?3'b0:(deallow==1)?COUNT:(COUNT==3'b100)?3'b011:(out==1)?COUNT + 1:COUNT; //count the number of people
        t2 <= (deallow==1)?((out==1)?1:0):0; //check if a person is entering a room when its not allow to
        
        case(COUNT)
        
            3'b000:seg<=7'b1111111;
            3'b001:seg<=7'b1110111;
            3'b010:seg<=7'b0110111;
            default:seg<=7'b0110110;
        
        endcase
    end

endmodule
