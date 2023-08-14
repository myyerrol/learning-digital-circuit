module state(
    input wire[0:0] i_clk,
    input wire[0:0] i_rst_n,
    input wire[0:0] i_en,
    output reg[3:0] o_state
);

    reg[3:0] state_curr;
    reg[3:0] state_next;
    parameter [3:0] STATE_0 = 3'b000,
                    STATE_1 = 3'b001,
                    STATE_2 = 3'b010;

    always @(posedge i_clk or negedge i_rst_n) begin
        if (!i_rst_n) begin
            state_curr <= STATE_0;
        end
        else begin
            state_curr <= state_next;
        end
    end

    always @(*) begin
        case (state_curr)
            STATE_0: begin
                if (i_en) begin
                    state_next = STATE_1;
                end
                else begin
                    state_next = STATE_0;
                end
            end
            STATE_1: begin
                if (i_en) begin
                    state_next = STATE_2;
                end
                else begin
                    state_next = STATE_1;
                end
            end
            STATE_2: begin
                if (i_en) begin
                    state_next = STATE_0;
                end
                else begin
                    state_next = STATE_2;
                end
            end
            default: begin
                state_next = STATE_0;
            end
        endcase
    end

    always @(posedge i_clk or negedge i_rst_n) begin
        if (!i_rst_n) begin
            o_state <= STATE_0;
        end
        else begin
            o_state <= state_curr;
        end
    end

endmodule
