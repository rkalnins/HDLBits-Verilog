`default_nettype none
module top_module(
    input a,
    input b,
    input c,
    input d,
    output out,
    output out_n   ); 
    
    wire temp_1;
    
    assign temp_1 = (a & b) | (c & d);
    assign out = temp_1;
    
    assign out_n = !temp_1;

endmodule