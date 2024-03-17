`timescale 1ns / 1ps

module mst_2_tb();

parameter CYCLE = 10;

reg clk;
reg rst_n;

initial begin
    clk   = 1'b1;
    rst_n = 1'b0;
    #10;
    rst_n = 1'b1;
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
    .rst_n(rst_n),
    .led()
);

endmodule
