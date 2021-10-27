module d_ff (output logic q, qbar, input logic clk, rst, d);

always_ff @(posedge clk, negedge rst)
  if (~rst)
    begin
    q <= 1'b0;
    qbar <= 1'b1;
    end
  else
    begin
    q <= d;
    qbar <= ~d;
    end

endmodule
