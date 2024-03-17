`timescale 1ns / 1ps

module mst_1_tb();

parameter CYCLE = 10;

reg clk;

initial begin
    clk = 1'b0;
end

always begin
    #(CYCLE / 2) clk = ~clk;
end

initial begin
    $dumpfile("build/mst_1.vcd");
    $dumpvars(0, mst_1_tb);
end

mst_1 mst_1_inst(
    .i_num(8'b11110000),
    .o_num()
);

endmodule
