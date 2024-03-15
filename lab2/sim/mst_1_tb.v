`timescale 1ns/1ns

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

mst_1 mst_1_ins(
    .cpu_overheated(1'b1),
    .shut_off_computer(),
    .arrived(1'b0),
    .gas_tank_empty(1'b1),
    .keep_driving()
);

endmodule
