`timescale 1ns / 1ps

module mst_1_tb();

parameter CYCLE = 10;

reg clk;
reg [3 : 0] sw;

initial begin
    clk = 1'b0;
    sw = 4'b0000;
    #100;
    sw = 4'b0001;
    #100;
    sw = 4'b0010;
    #100;
    sw = 4'b0100;
    #100;
    sw = 4'b1000;
    $finish;
end

always begin
    #(CYCLE / 2) clk = ~clk;
end

initial begin
    $dumpfile("build/mst_1.vcd");
    $dumpvars(0, mst_1_tb);
end

mst_1 mst_1_inst(
    .sw(sw),
    .led()
);

endmodule
