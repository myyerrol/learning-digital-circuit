module mst_2_1(
    input  [7 : 0] i_num_1,
    input  [7 : 0] i_num_2,
    output [7 : 0] o_num
);

    assign o_num = (i_num_1 > i_num_2) ? i_num_1 : i_num_2;

endmodule
