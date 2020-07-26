module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    
    wire first_cout, second_cout;
    wire [15:0] first_sum, second_sum;

    add16 first_16( .a(a[15:0]), .b(b[15:0]), .cin(0), .sum(first_sum), .cout(first_cout) );
    
    add16 second_16( .a(a[31:16]), .b(b[31:16]), .cin(first_cout), .sum(second_sum), .cout(second_cout) );
    
    assign sum[15:0] = first_sum;
    assign sum[31:16] = second_sum;

endmodule