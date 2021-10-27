module output_reg (output logic n, input logic clk, s, t, c);

always_ff @(posedge clk)
  if (s)
    n <= t & c;
    
endmodule
