module mst_1(
    input  [7 : 0] i_num,
    output [7 : 0] o_num
);

    assign o_num[7] = i_num[0];
    assign o_num[6] = i_num[1];
    assign o_num[5] = i_num[2];
    assign o_num[4] = i_num[3];
    assign o_num[3] = i_num[4];
    assign o_num[2] = i_num[5];
    assign o_num[1] = i_num[6];
    assign o_num[0] = i_num[7];

endmodule
