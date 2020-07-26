module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire cout_1, cout_2;
 	
    add16 adder_1( .a(a[15:0]), .b(b[15:0]), .cin(0), .sum(sum[15:0]), .cout(cout_1) );
    
    wire [15:0] sum_when_0, sum_when_1;
    
    add16 adder_2_cout0 ( .a(a[31:16]), .b(b[31:16]), .cin(0), .sum(sum_when_0), .cout(cout_2) );
    add16 adder_2_cout1 ( .a(a[31:16]), .b(b[31:16]), .cin(1), .sum(sum_when_1), .cout(cout_2) );
    
    always @ (*) begin
        case (cout_1)
            2'b0 : sum[31:16] <= sum_when_0;
            2'b1 : sum[31:16] <= sum_when_1;
        endcase
    end
endmodule