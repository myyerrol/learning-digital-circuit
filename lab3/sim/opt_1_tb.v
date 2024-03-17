`timescale 1ns / 1ps

module opt_1_tb();

parameter CYCLE = 10;

reg         clk;
reg         rst_n;
reg [1 : 0] sw;
reg         dir;

initial begin
    clk   = 1'b1;
    rst_n = 1'b0;
    sw    = 2'b11;
    dir   = 1'b0;
    #10;
    rst_n = 1'b1;
end

always begin
    #(CYCLE / 2) clk = ~clk;
end

initial begin
    $dumpfile("build/opt_1.vcd");
    $dumpvars(0, opt_1_tb);
end

opt_1 opt_1_inst(
    .clk(clk),
    .rst_n(rst_n),
    .sw(sw),
    .dir(dir),
    .led()
);

endmodule
