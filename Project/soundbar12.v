`timescale 1ns / 1ps

//displays a soundbar with a certain settings

module soundbar12(input clock, [1:0] R, [15:0] tester, [12:0] index, output reg [15:0] data );
    
    wire [15:0] A; wire [15:0] B; wire [15:0] C; wire [15:0] D; wire [15:0] E;
    
    colourselecter fa0(clock, R, A, B, C, D, E);
    
    always @ (posedge clock) begin
    
        case(tester)
    
            16'b0000000000000000:data<=A;
            16'b0000000000000001:data<=(index/96<61)?A:((index%96>=0)?((index%96<=32)?C:A):A);
            16'b0000000000000011:data<=(index/96<57)?A:(index/96==60)?A:((index%96>=0)?((index%96<=32)?C:A):A);
            16'b0000000000000111:data<=(index/96<53)?A:(index/96==56)?A:(index/96==60)?A:((index%96>=0)?((index%96<=32)?C:A):A);
            16'b0000000000001111:data<=(index/96<49)?A:(index/96==52)?A:(index/96==56)?A:(index/96==60)?A:((index%96>=0)?((index%96<=32)?C:A):A);
            16'b0000000000011111:data<=(index/96<45)?A:(index/96==48)?A:(index/96==52)?A:(index/96==56)?A:(index/96==60)?A:((index%96>=0)?((index%96<=32)?C:A):A);
            16'b0000000000111111:data<=(index/96<41)?A:(index/96==44)?A:(index/96==48)?A:(index/96==52)?A:(index/96==56)?A:(index/96==60)?A:((index%96>=0)?((index%96<=32)?C:A):A);
            16'b0000000001111111:data<=(index/96<37)?A:(index/96==40)?A:(index/96==44)?A:(index/96==48)?A:(index/96==52)?A:(index/96==56)?A:(index/96==60)?A:(index%96>32)?A:(index/96<41)?D:C;
            16'b0000000011111111:data<=(index/96<33)?A:(index/96==36)?A:(index/96==40)?A:(index/96==44)?A:(index/96==48)?A:(index/96==52)?A:(index/96==56)?A:(index/96==60)?A:(index%96>32)?A:(index/96<41)?D:C;
            16'b0000000111111111:data<=(index/96<29)?A:(index/96==32)?A:(index/96==36)?A:(index/96==40)?A:(index/96==44)?A:(index/96==48)?A:(index/96==52)?A:(index/96==56)?A:(index/96==60)?A:(index%96>32)?A:(index/96<41)?D:C;
            16'b0000001111111111:data<=(index/96<25)?A:(index/96==28)?A:(index/96==32)?A:(index/96==36)?A:(index/96==40)?A:(index/96==44)?A:(index/96==48)?A:(index/96==52)?A:(index/96==56)?A:(index/96==60)?A:(index%96>32)?A:(index/96<41)?D:C;
            16'b0000011111111111:data<=(index/96<21)?A:(index/96==24)?A:(index/96==28)?A:(index/96==32)?A:(index/96==36)?A:(index/96==40)?A:(index/96==44)?A:(index/96==48)?A:(index/96==52)?A:(index/96==56)?A:(index/96==60)?A:(index%96>32)?A:(index/96<41)?D:C;
            16'b0000111111111111:data<=(index/96<17)?A:(index/96==20)?A:(index/96==24)?A:(index/96==28)?A:(index/96==32)?A:(index/96==36)?A:(index/96==40)?A:(index/96==44)?A:(index/96==48)?A:(index/96==52)?A:(index/96==56)?A:(index/96==60)?A:(index%96>32)?A:(index/96<21)?E:(index/96<41)?D:C;
            16'b0001111111111111:data<=(index/96<13)?A:(index/96==16)?A:(index/96==20)?A:(index/96==24)?A:(index/96==28)?A:(index/96==32)?A:(index/96==36)?A:(index/96==40)?A:(index/96==44)?A:(index/96==48)?A:(index/96==52)?A:(index/96==56)?A:(index/96==60)?A:(index%96>32)?A:(index/96<21)?E:(index/96<41)?D:C;
            16'b0011111111111111:data<=(index/96<9)?A:(index/96==12)?A:(index/96==16)?A:(index/96==20)?A:(index/96==24)?A:(index/96==28)?A:(index/96==32)?A:(index/96==36)?A:(index/96==40)?A:(index/96==44)?A:(index/96==48)?A:(index/96==52)?A:(index/96==56)?A:(index/96==60)?A:(index%96>32)?A:(index/96<21)?E:(index/96<41)?D:C;
            16'b0111111111111111:data<=(index/96<5)?A:(index/96==8)?A:(index/96==12)?A:(index/96==16)?A:(index/96==20)?A:(index/96==24)?A:(index/96==28)?A:(index/96==32)?A:(index/96==36)?A:(index/96==40)?A:(index/96==44)?A:(index/96==48)?A:(index/96==52)?A:(index/96==56)?A:(index/96==60)?A:(index%96>32)?A:(index/96<21)?E:(index/96<41)?D:C;
            16'b1111111111111111:data<=(index/96==4)?A:(index/96==8)?A:(index/96==12)?A:(index/96==16)?A:(index/96==20)?A:(index/96==24)?A:(index/96==28)?A:(index/96==32)?A:(index/96==36)?A:(index/96==40)?A:(index/96==44)?A:(index/96==48)?A:(index/96==52)?A:(index/96==56)?A:(index/96==60)?A:(index%96>32)?A:(index/96<21)?E:(index/96<41)?D:C;
        
        endcase        
    end

endmodule
