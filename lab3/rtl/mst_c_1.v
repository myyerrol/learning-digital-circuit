module mst_c_1(
    input  clk,
    input  rst,
    input  sig_in,
    output pos_edge,
    output neg_edge
);

    reg sig_r1;
    reg sig_r2;
    reg sig_r3;

    always @(posedge clk) begin
        if (rst) begin
            sig_r1 <= 1'b0;
            sig_r2 <= 1'b0;
            sig_r3 <= 1'b0;
        end
        else begin
            sig_r1 <= sig_in;
            sig_r2 <= sig_r1;
            sig_r3 <= sig_r2;
        end
    end

    assign pos_edge = ( sig_r1 &&  sig_r2 && !sig_r3) ? 1'b1 : 1'b0;
    assign neg_edge = (~sig_r1 && ~sig_r2 &&  sig_r3) ? 1'b1 : 1'b0;

endmodule
