module top_module (
    input [4:0] a, b, c, d, e, f,
    output [7:0] w, x, y, z );

    wire [31:0] input_concat = { a, b, c, d, e, f, 2'b11 };
    assign w = input_concat[31:24];
    assign x = input_concat[23:16];
    assign y = input_concat[15:8];
    assign z = input_concat[7:0];

endmodule