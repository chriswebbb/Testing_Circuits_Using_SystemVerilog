module scan_dff (output logic q, qbar, input logic clk, rst, d, mode, scan_in);

always_ff @(posedge clk, negedge rst)
  if (~rst)
    begin
    q <= 1'b0;
    qbar <= 1'b1;
    end
  else if (mode)
    begin
    q <= scan_in;
    qbar <= ~scan_in;
    end
  else
    begin
    q <= d;
    qbar <= ~d;
    end
    
endmodule
