`timescale 1ns/1ns

module mst_4_tb();

parameter CYCLE = 10;

reg clk;

initial begin
    clk = 1'b0;
end

always begin
    #(CYCLE / 2) clk = ~clk;
end

initial begin
    $dumpfile("build/mst_4.vcd");
    $dumpvars(0, mst_4_tb);
end

reg rst;
reg en;

initial begin
    rst = 1;
    en = 0;
    #10;
    rst = 0;
    #10;
    en = 1;
    #20;
    en = 0;
    #20;
    en = 1;
    #20;
    rst = 1;
    #20;
    rst = 0;
    #200;
    en = 0;
end

mst_4 #(
    .MIN_VALUE(8'd10),
    .MAX_VALUE(8'd13)
) mst_4_inst (
    .clk(clk),
    .rst(rst),
    .enable(en),
    .out()
);

endmodule
