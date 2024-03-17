module opt_1(
    input              clk,
    input              rst,
    input      [1 : 0] sw,
    input              dir,
    output reg [3 : 0] led
);

    reg [31 : 0] count;
    reg [31 : 0] timer_cnt;

    always @(sw) begin
        case (sw)
            2'b00:   timer_cnt <= 32'd400_000_000;
            2'b01:   timer_cnt <= 32'd200_000_000;
            2'b10:   timer_cnt <= 32'd100_000_000;
            2'b11:   timer_cnt <= 32'd050_000_000;
            default: timer_cnt <= 32'd200_000_000;
        endcase
    end

    always @(posedge clk) begin
        if (rst) begin
            count <= 0;
        end
        else if (count >= timer_cnt) begin
            count <= 0;
        end
        else begin
            count <= count + 1;
        end
    end

    always @(posedge clk) begin
        if (rst) begin
            led <= 4'b0001;
        end
        else if (count == timer_cnt) begin
            case (dir)
                1'b1: led <= {led[2 : 0], led[3]};
                1'b0: led <= {led[0], led[3 : 1]};
            endcase
        end
    end

endmodule
