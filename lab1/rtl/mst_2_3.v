module mst_2_3(
    input  [7 : 0] i_num_1,
    input  [7 : 0] i_num_2,
    input  [7 : 0] i_num_3,
    output [7 : 0] o_num
);

    wire [7 : 0] w_num;

    mst_2_1 mst_2_1_ins_1(
        .i_num_1(i_num_1),
        .i_num_2(i_num_2),
        .o_num(w_num)
    );

    mst_2_1 mst_2_1_ins_2(
        .i_num_1(w_num),
        .i_num_2(i_num_3),
        .o_num(o_num)
    );

endmodule
