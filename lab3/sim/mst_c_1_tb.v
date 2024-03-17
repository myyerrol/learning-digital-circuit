`timescale 1ns / 1ps

module mst_c_1_tb();

parameter CYCLE = 10;

reg clk;
reg rst;
reg sig;

initial begin
    clk = 1'b1;
    rst = 1'b1;
    sig = 1'b0;
    #10;
    rst = 1'b0;
    #50;
    sig = 1'b1;
    #50;
    sig = 1'b0;
    #50;
    $finish;
end

always begin
    #(CYCLE / 2) clk = ~clk;
end

initial begin
    $dumpfile("build/mst_c_1.vcd");
    $dumpvars(0, mst_c_1_tb);
end

mst_c_1 mst_c_1_inst(
    .clk(clk),
    .rst(rst),
    .sig_in(sig),
    .pos_edge(),
    .neg_edge()
);

endmodule
