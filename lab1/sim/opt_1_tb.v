`timescale 1ns/1ns

module opt_1_tb();

parameter CYCLE = 10;

reg clk;

initial begin
    clk = 1'b0;
end

always begin
    #(CYCLE / 2) clk = ~clk;
end

initial begin
    $dumpfile("build/opt_1.vcd");
    $dumpvars(0, opt_1_tb);
end

opt_1 opt_1_ins(
    .i_a(8'b0011_0011),
    .i_b(8'b1111_0000),
    .o_c(),
    .o_d(),
    .o_e(),
    .o_f(),
    .o_g(),
    .o_h(),
    .o_i(),
    .o_j(),
    .o_k(),
    .o_l()
);

endmodule
