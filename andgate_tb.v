module andgate(a, b, y);
    input a, b;
    output y;
    assign y = a & b;
endmodule

module andgate_tb;
    reg a, b;
    wire y;
    andgate uut(a, b, y);
    parameter period = 10;

    initial begin
        $dumpfile("andgate_tb.vcd");
        $dumpvars();
        a = 0; b = 0;
        #period;
        a = 0; b = 1;
        #period;
        a = 1; b = 0;
        #period;
        a = 1; b = 1;
        #period;
        $finish;
    end
endmodule
