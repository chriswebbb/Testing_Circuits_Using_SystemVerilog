module test_c4;

timeunit 1ns;
timeprecision 100ps;

logic s, t;
logic n_clk, rst, a;

c4 c4 (.*);

initial 
  begin
  n_clk = 0;
  #20;
  forever #10 n_clk = ~n_clk;
  end
  
initial

  begin
  rst = 1;
  a = 0;
  #10 rst = 0;
  #10 rst = 1;
  #40 a = 1;
  #60 a = 0;
  #20 a = 1;
  #20 a = 0;
  #40 a = 1;
  #20 a = 0;
  #20 a = 1;
  #20 $finish;
  end

endmodule
  
