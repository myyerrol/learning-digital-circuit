module mst_1(
    input  [3 : 0] sw,
    output [3 : 0] led
);

    assign led = ~sw;

endmodule
