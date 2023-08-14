`timescale 1ns/1ns

module state_tb();

parameter PERIOD = 10;

reg  [0:0] clk;
reg  [0:0] rst_n;
reg  [0:0] en;
wire [3:0] state;

state state_inst(
    .i_clk(clk),
    .i_rst_n(rst_n),
    .i_en(en),
    .o_state(state)
);

initial begin
    clk   = 1'b0;
    rst_n = 1'b1;
    # 100
    rst_n = 1'b0;
    # 100
    rst_n = 1'b1;
    en = 1'b1;
end

always begin
    #(PERIOD / 2) clk = ~clk;
end

endmodule
