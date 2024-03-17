`timescale 1ns/1ns

module opt_2_tb();

parameter CYCLE = 10;

reg clk;
reg rst_n;

initial begin
    clk = 1'b0;
    rst_n = 1'b1;
    #10
    rst_n = 1'b0;
    #10
    rst_n = 1'b1;
end

always begin
    #(CYCLE / 2) clk = ~clk;
end

initial begin
    $dumpfile("build/opt_2.vcd");
    $dumpvars(0, opt_2_tb);
end


defparam opt_2_ins.ADDR_WIDTH = 4;
opt_2 opt_2_ins(
    .i_clk(clk),
    .i_rst_n(rst_n),
    .o_data()
);

endmodule
