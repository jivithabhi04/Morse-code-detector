module morse_code_detector(
input clk, reset,
input [1:0] in_mcd,
output reg [6:0] out_mcd
    );
parameter RST=0, A=1, B=2, C=3, D=4, E=5, F=6, G=7, H=8, I=9;
parameter        J=10, K=11, L=12, M=13, N=14, O=15, P=16, Q=17, R=18, S=19;
parameter        T=20, U=21, V=22, W=23, X=24, Y=25, Z=26;
reg [4:0] NS,PS;

// reset logic
always@(posedge clk)
begin
    if (reset)
    begin
    out_mcd <= 7'b0000000;
    PS <= RST;
    end
    else
    PS <= NS;
end

// output + state
always@(PS or in_mcd)
begin
    case(PS)
    
    RST : 
    begin
        if (in_mcd == 2'b00)
        out_mcd <= 7'b0000000;
        if (in_mcd == 2'b01)
        NS <= E;     
        if (in_mcd == 2'b10)
        NS <= T;   
        if (in_mcd == 2'b11)
        begin
        NS <= RST;
        out_mcd <= 7'b0001000;
        end
    end
    
    A : 
    begin
        if (in_mcd == 2'b00)
        out_mcd <= 7'b0000000;
        if (in_mcd == 2'b01)
        NS <= R;     
        if (in_mcd == 2'b10)
        NS <= W;   
        if (in_mcd == 2'b11)
        begin
        NS <= RST;
        out_mcd <= 7'b1110111;
        end
    end
    
    B : 
    begin
        if (in_mcd == 2'b00)
        out_mcd <= 7'b0000000;
        if (in_mcd == 2'b01)
        NS <= B;     
        if (in_mcd == 2'b10)
        NS <= B;   
        if (in_mcd == 2'b11)
        begin
        NS <= RST;
        out_mcd <= 7'b0011111;
        end
    end
    
    C : 
    begin
        if (in_mcd == 2'b00)
        out_mcd <= 7'b0000000;
        if (in_mcd == 2'b01)
        NS <= C;     
        if (in_mcd == 2'b10)
        NS <= C;   
        if (in_mcd == 2'b11)
        begin
        NS <= RST;
        out_mcd <= 7'b1001110;
        end
    end
    
    D : 
    begin
        if (in_mcd == 2'b00)
        out_mcd <= 7'b0000000;
        if (in_mcd == 2'b01)
        NS <= B;     
        if (in_mcd == 2'b10)
        NS <= X;   
        if (in_mcd == 2'b11)
        begin
        NS <= RST;
        out_mcd <= 7'b0111101;
        end
    end
    
    E : 
    begin
        if (in_mcd == 2'b00)
        out_mcd <= 7'b0000000;
        if (in_mcd == 2'b01)
        NS <= I;     
        if (in_mcd == 2'b10)
        NS <= A;   
        if (in_mcd == 2'b11)
        begin
        NS <= RST;
        out_mcd <= 7'b1001111;
        end
    end
    
    F : 
    begin
        if (in_mcd == 2'b00)
        out_mcd <= 7'b0000000;
        if (in_mcd == 2'b01)
        NS <= F;     
        if (in_mcd == 2'b10)
        NS <= F;   
        if (in_mcd == 2'b11)
        begin
        NS <= RST;
        out_mcd <= 7'b1000111;
        end
    end
    
    G : 
    begin
        if (in_mcd == 2'b00)
        out_mcd <= 7'b0000000;
        if (in_mcd == 2'b01)
        NS <= Z;     
        if (in_mcd == 2'b10)
        NS <= Q;   
        if (in_mcd == 2'b11)
        begin
        NS <= RST;
        out_mcd <= 7'b1011110;
        end
    end
    
    H : 
    begin
        if (in_mcd == 2'b00)
        out_mcd <= 7'b0000000;
        if (in_mcd == 2'b01)
        NS <= H;     
        if (in_mcd == 2'b10)
        NS <= H;   
        if (in_mcd == 2'b11)
        begin
        NS <= RST;
        out_mcd <= 7'b0010111;
        end
    end
    
    I : 
    begin
        if (in_mcd == 2'b00)
        out_mcd <= 7'b0000000;
        if (in_mcd == 2'b01)
        NS <= S;     
        if (in_mcd == 2'b10)
        NS <= U;   
        if (in_mcd == 2'b11)
        begin
        NS <= RST;
        out_mcd <= 7'b0000110;
        end
    end
    
    J : 
    begin
        if (in_mcd == 2'b00)
        out_mcd <= 7'b0000000;
        if (in_mcd == 2'b01)
        NS <= J;     
        if (in_mcd == 2'b10)
        NS <= J;   
        if (in_mcd == 2'b11)
        begin
        NS <= RST;
        out_mcd <= 7'b0111100;
        end
    end
    
    K : 
    begin
        if (in_mcd == 2'b00)
        out_mcd <= 7'b0000000;
        if (in_mcd == 2'b01)
        NS <= C;     
        if (in_mcd == 2'b10)
        NS <= Y;   
        if (in_mcd == 2'b11)
        begin
        NS <= RST;
        out_mcd <= 7'b0110111;
        end
    end
    
    L : 
    begin
        if (in_mcd == 2'b00)
        out_mcd <= 7'b0000000;
        if (in_mcd == 2'b01)
        NS <= L;     
        if (in_mcd == 2'b10)
        NS <= L;   
        if (in_mcd == 2'b11)
        begin
        NS <= RST;
        out_mcd <= 7'b0001110;
        end
    end
    
    M : 
    begin
        if (in_mcd == 2'b00)
        out_mcd <= 7'b0000000;
        if (in_mcd == 2'b01)
        NS <= G;     
        if (in_mcd == 2'b10)
        NS <= O;   
        if (in_mcd == 2'b11)
        begin
        NS <= RST;
        out_mcd <= 7'b1010101;
        end
    end
    
    N : 
    begin
        if (in_mcd == 2'b00)
        out_mcd <= 7'b0000000;
        if (in_mcd == 2'b01)
        NS <= D;     
        if (in_mcd == 2'b10)
        NS <= K;   
        if (in_mcd == 2'b11)
        begin
        NS <= RST;
        out_mcd <= 7'b0010101;
        end
    end
    
    O : 
    begin
        if (in_mcd == 2'b00)
        out_mcd <= 7'b0000000;
        if (in_mcd == 2'b01)
        NS <= O;     
        if (in_mcd == 2'b10)
        NS <= O;   
        if (in_mcd == 2'b11)
        begin
        NS <= RST;
        out_mcd <= 7'b1111110;
        end
    end
    
    P : 
    begin
        if (in_mcd == 2'b00)
        out_mcd <= 7'b0000000;
        if (in_mcd == 2'b01)
        NS <= P;     
        if (in_mcd == 2'b10)
        NS <= P;   
        if (in_mcd == 2'b11)
        begin
        NS <= RST;
        out_mcd <= 7'b1100111;
        end
    end
    
    Q : 
    begin
        if (in_mcd == 2'b00)
        out_mcd <= 7'b0000000;
        if (in_mcd == 2'b01)
        NS <= Q;     
        if (in_mcd == 2'b10)
        NS <= Q;   
        if (in_mcd == 2'b11)
        begin
        NS <= RST;
        out_mcd <= 7'b1110011;
        end
    end
    
    R : 
    begin
        if (in_mcd == 2'b00)
        out_mcd <= 7'b0000000;
        if (in_mcd == 2'b01)
        NS <= L;     
        if (in_mcd == 2'b10)
        NS <= R;   
        if (in_mcd == 2'b11)
        begin
        NS <= RST;
        out_mcd <= 7'b1000110;
        end
    end
    
    S : 
    begin
        if (in_mcd == 2'b00)
        out_mcd <= 7'b0000000;
        if (in_mcd == 2'b01)
        NS <= H;     
        if (in_mcd == 2'b10)
        NS <= V;   
        if (in_mcd == 2'b11)
        begin
        NS <= RST;
        out_mcd <= 7'b1011011;
        end
    end
    
    T : 
    begin
        if (in_mcd == 2'b00)
        out_mcd <= 7'b0000000;
        if (in_mcd == 2'b01)
        NS <= N;     
        if (in_mcd == 2'b10)
        NS <= M;   
        if (in_mcd == 2'b11)
        begin
        NS <= RST;
        out_mcd <= 7'b0001111;
        end
    end
    
    U : 
    begin
        if (in_mcd == 2'b00)
        out_mcd <= 7'b0000000;
        if (in_mcd == 2'b01)
        NS <= F;     
        if (in_mcd == 2'b10)
        NS <= U;   
        if (in_mcd == 2'b11)
        begin
        NS <= RST;
        out_mcd <= 7'b0111110;
        end
    end
    
    V : 
    begin
        if (in_mcd == 2'b00)
        out_mcd <= 7'b0000000;
        if (in_mcd == 2'b01)
        NS <= V;     
        if (in_mcd == 2'b10)
        NS <= V;   
        if (in_mcd == 2'b11)
        begin
        NS <= RST;
        out_mcd <= 7'b0101011;
        end
    end
    
    W : 
    begin
        if (in_mcd == 2'b00)
        out_mcd <= 7'b0000000;
        if (in_mcd == 2'b01)
        NS <= P;     
        if (in_mcd == 2'b10)
        NS <= J;   
        if (in_mcd == 2'b11)
        begin
        NS <= RST;
        out_mcd<= 7'b1011100;
        end
    end
    
    X : 
    begin
        if (in_mcd == 2'b00)
        out_mcd <= 7'b0000000;
        if (in_mcd == 2'b01)
        NS <= X;     
        if (in_mcd == 2'b10)
        NS <= X;   
        if (in_mcd == 2'b11)
        begin
        NS <= RST;
        out_mcd <= 7'b0010011;
        end
    end
    
    Y : 
    begin
        if (in_mcd == 2'b00)
        out_mcd <= 7'b0000000;
        if (in_mcd == 2'b01)
        NS <= Y;     
        if (in_mcd == 2'b10)
        NS <= Y;   
        if (in_mcd == 2'b11)
        begin
        NS <= RST;
        out_mcd <= 7'b0111011;
        end
    end
    
    Z : 
    begin
        if (in_mcd == 2'b00)
        out_mcd <= 7'b0000000;
        if (in_mcd == 2'b01)
        NS <= Z;     
        if (in_mcd == 2'b10)
        NS <= Z;   
        if (in_mcd == 2'b11)
        begin
        NS <= RST;
        out_mcd <= 7'b1101101;
        end
    end
    
    default : 
    NS <= RST;
    endcase
end
endmodule


