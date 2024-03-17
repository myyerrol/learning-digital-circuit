module mst_4 #(
    parameter MIN_VALUE = 8'd0,
    parameter MAX_VALUE = 8'd100
) (
    input  clk,
    input  rst,
    input  enable,
    output out
);

    reg [7 : 0] counter;
    always @(posedge clk) begin
        if (rst) begin
            counter <= 0;
        end
        else begin
            if (enable) begin
                if (counter == 8'b0 || counter >= MAX_VALUE) begin
                    counter <= MIN_VALUE;
                end
                else begin
                    counter <= counter + 8'b1;
                end
            end
            else begin
                counter <= 0;
            end
        end
    end

    assign out = (counter == MAX_VALUE);

endmodule
