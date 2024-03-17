`timescale 1ns / 1ps

module mst_2_3_tb();

parameter CYCLE = 10;

reg clk;

initial begin
    clk = 1'b0;
end

always begin
    #(CYCLE / 2) clk = ~clk;
end

initial begin
    $dumpfile("build/mst_2_3.vcd");
    $dumpvars(0, mst_2_3_tb);
end

mst_2_3 mst_2_3_inst(
    .i_num_1(8'd08),
    .i_num_2(8'd09),
    .i_num_3(8'd10),
    .o_num()
);

endmodule
