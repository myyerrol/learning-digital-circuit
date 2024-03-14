module example(
    input      [3 : 0] i_num1,
    input      [3 : 0] i_num2,
    input              i_sel,
    output reg [3 : 0] o_num
);

    always @(*) begin
        if (i_sel) begin
            o_num= i_num1;
        end
        else begin
            o_num = i_num2;
        end
    end

endmodule
