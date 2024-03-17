module mst_2 #(
    parameter MAX_VALUE = 32'd199_999_999
) (
    input              clk,
    input              rst_n,
    output reg [3 : 0] led
);

    reg [31 : 0] counter;
    always @(posedge clk) begin
        if (!rst_n) begin
            counter <= 32'b0;
            led     <= 4'b0000;
        end
        else begin
            if (counter >= MAX_VALUE) begin
                counter <= 32'b0;
                led     <= ~led;
            end
            else begin
                counter <= counter + 1'b1;
                led     <= led;
            end
        end
    end

endmodule
