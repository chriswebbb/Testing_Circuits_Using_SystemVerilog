module c4 (output logic s, t, input logic n_clk, rst, a);

logic s_plus, t_plus, s_bar, t_bar, clk;

assign clk = ~n_clk;

next_state n0 (.*);
d_ff d0 (.q(s), .qbar(s_bar), .clk(clk), .rst(rst), .d(s_plus));
d_ff d1 (.q(t), .qbar(t_bar), .clk(clk), .rst(rst), .d(t_plus));
//output_reg o1 (.*);

endmodule

