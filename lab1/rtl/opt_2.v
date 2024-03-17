module opt_2(
    input                           i_clk,
    input                           i_rst_n,
    output reg [DATA_WIDTH - 1 : 0] o_data
);

    parameter ADDR_WIDTH = 2;
    parameter ADDR_COUNT = 1 << ADDR_WIDTH;
    parameter DATA_WIDTH = 32;

    reg [ADDR_WIDTH - 1 : 0] r_cnt;
    reg [DATA_WIDTH - 1 : 0] r_gpr[ADDR_COUNT - 1 : 0];

    integer i;

    always @(posedge i_clk) begin
        if (!i_rst_n) begin
            r_cnt <= 0;
            for (i = 0; i < ADDR_COUNT; i = i + 1) begin
                r_gpr[i] <= i + 1;
            end
        end
        else begin
            if (r_cnt == ADDR_COUNT - 1) begin
                r_cnt <= 0;
            end
            else begin
                r_cnt <= r_cnt + 1'b1;
            end
            o_data <= r_gpr[r_cnt];
        end
    end

endmodule
