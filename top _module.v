module top_module(
input in, clk, reset,
output [6:0] out
);
wire [1:0] tx_data_out;
// instentiation of transmitter
transmitter TX (
.clk(clk),
.reset(reset),
.in_tx(in),
.out_tx(tx_data_out)
);

// instentiation of morse code detector
morse_code_detector MCD (
.clk(clk),
.reset(reset),
.in_mcd(tx_data_out),
.out_mcd(out)
);
endmodule