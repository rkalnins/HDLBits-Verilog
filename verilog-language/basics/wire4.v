module top_module( 
    input a,b,c,
    output w,x,y,z );
    
    assign w = a;
    assign {x, y} = {2{b}};
    assign z = c;

endmodule