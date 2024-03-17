`timescale 1ns/1ns

module mst_3_tb();

parameter CYCLE = 10;

reg clk;

initial begin
    clk = 1'b1;
end

always begin
    #(CYCLE / 2) clk = ~clk;
end

initial begin
    $dumpfile("build/mst_3.vcd");
    $dumpvars(0, mst_3_tb);
end

reg         a;
reg         b;
reg [7 : 0] c;

initial begin
    #10;
    a = 1'b1;
    b = 1'b0;
    c = 8'd1;
    #10;
    b = 1'b1;
    #5;
    b = 1'b0;
    #5;
    c = c + 1'b1;
    #10;
    a = 1'b0;
    b = 1'b1;
    #10;
    a = 1'b1;
    c = c + 1'b1;
    #20;
    a = 1'b0;
    b = 1'b0;
    #5;
    b = 1'b1;
    #5;
    a = 1'b1;
    c = c + 1'b1;
    #10;
    b = 1'b0;
    #20;
    $finish;
end

endmodule
