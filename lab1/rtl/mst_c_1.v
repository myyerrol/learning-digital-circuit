module mst_c_1(
    input  [7 : 0] i_a,
    input  [7 : 0] i_b,
    output [7 : 0] o_c,
    output [7 : 0] o_d,
    output [7 : 0] o_e,
    output [7 : 0] o_f,
    output [7 : 0] o_g,
    output [7 : 0] o_h,
    output [7 : 0] o_i,
    output [7 : 0] o_j,
    output [7 : 0] o_k,
    output [7 : 0] o_l
);

    assign o_c = i_a & i_b;
    assign o_d = i_a || i_b;
    assign o_e = i_a ^ i_b;
    assign o_f = ~i_a;
    assign o_g = {i_a[2 : 0], i_b[3 : 0], {1'b1}};
    assign o_h = i_b >>> 3;
    assign o_i = &i_b;
    assign o_j = (i_a > i_b) ? i_a : i_b;
    assign o_k = i_a - i_b;
    assign o_l = !i_a;

endmodule
