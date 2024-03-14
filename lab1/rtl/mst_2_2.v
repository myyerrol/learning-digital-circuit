module mst_2_2(
    input  [7 : 0] i_num_1,
    input  [7 : 0] i_num_2,
    input  [7 : 0] i_num_3,
    output [7 : 0] o_num
);

    reg [7 : 0] r_num;

    always @(*) begin
        if (i_num_1 > i_num_2) begin
            r_num = i_num_1;
        end
        else begin
            r_num = i_num_2;
        end

        if (r_num > i_num_3) begin
            r_num = r_num;
        end
        else begin
            r_num = i_num_3;
        end
    end

    assign o_num = r_num;

endmodule
