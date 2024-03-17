module opt_1(
    input               i_clk,
    input               i_rst_n,
    output reg [31 : 0] o_data
);

    reg [ 1 : 0] r_cnt;
    reg [31 : 0] r_gpr[3 : 0];

    always @(posedge i_clk) begin
        if (!i_rst_n) begin
            r_cnt    <= 2'b0;
            r_gpr[0] <= 32'd1;
            r_gpr[1] <= 32'd2;
            r_gpr[2] <= 32'd3;
            r_gpr[3] <= 32'd4;
        end
        else begin
            if (r_cnt == 3) begin
                r_cnt <= 2'b0;
            end
            else begin
                r_cnt <= r_cnt + 1'b1;
            end
            o_data <= r_gpr[r_cnt];
        end
    end

endmodule
