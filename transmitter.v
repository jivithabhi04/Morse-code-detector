module transmitter(
input clk,
input reset,
input in_tx,
output reg[1:0] out_tx
    );
parameter srst=0, s1=1, s11=2, s110=3, s10=4, s0=5; 
reg [2:0] NS,PS;  

// Reset logic
always@(posedge clk)
begin
    if (reset)
    begin
        PS <= srst;
        out_tx <= 1'b00;
    end
    else
    PS <= NS;
end  

// state + output
always@(in_tx or PS)
begin
    case(PS)
    
    srst :begin
    NS <= in_tx ? s1 : s0;
    out_tx <= 2'b00;
    end 
    
    s1 :begin
    NS <= in_tx ? s11 : s10;
    out_tx <= 2'b00;
    end 
    s11 :begin
    NS <= in_tx ? s11 : s110;
    out_tx <= 2'b00;
    end 
    s110 :begin
    NS <= in_tx ? s1 : s0;
    out_tx <= 2'b10;
    end 
    s10 :begin
    NS <= in_tx ? s1 : s0;
    out_tx <= 2'b01;
    end 
    s0 :begin
    NS <= in_tx ? s1 : s0;
    out_tx <= 2'b11;
    end 
    
    default :begin 
    NS <= srst;
    out_tx <= 2'b00;
    end
    
    endcase
end

endmodule





































