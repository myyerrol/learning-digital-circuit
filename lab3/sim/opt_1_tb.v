`timescale 1ns / 1ps

module opt_1_tb();

parameter CYCLE = 10;

reg         clk;
reg         rst;
reg [1 : 0] sw;
reg         dir;

initial begin
    clk = 1'b1;
    rst = 1'b1;
    sw  = 2'b11;
    dir = 1'b0;
    #10;
    rst = 1'b0;
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
    .rst(rst),
    .sw(sw),
    .dir(dir),
    .led()
);

endmodule
