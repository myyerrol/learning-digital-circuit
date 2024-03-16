`timescale 1ns/1ns

module mst_2_tb();

parameter CYCLE = 10;

reg clk;

initial begin
    clk = 1'b0;
end

always begin
    #(CYCLE / 2) clk = ~clk;
end

initial begin
    $dumpfile("build/mst_2.vcd");
    $dumpvars(0, mst_2_tb);
end

reg [15 : 0] scancode;

initial begin
    scancode = 16'he06b;
    #10;
    scancode = 16'he072;
    #10;
    scancode = 16'he074;
    #10;
    scancode = 16'he075;
    #10;
    $finish;
end

mst_2 mst_2_inst(
    .scancode(scancode),
    .left(),
    .down(),
    .right(),
    .up()
);

endmodule
