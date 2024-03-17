`timescale 1ns / 1ps

module mst_2_tb();

parameter CYCLE = 10;

reg clk;
reg rst;

initial begin
    clk = 1'b1;
    rst = 1'b1;
    #10;
    rst = 1'b0;
end

always begin
    #(CYCLE / 2) clk = ~clk;
end

initial begin
    $dumpfile("build/mst_2.vcd");
    $dumpvars(0, mst_2_tb);
end

mst_2 mst_2_inst(
    .clk(clk),
    .rst(rst),
    .led()
);

endmodule
