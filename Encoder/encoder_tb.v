`timescale 1ns/1ps
module encoder_tb();
    reg t_y0,t_y1,t_y2,t_y3;
    wire t_a,t_b;

    encoder gut (
        .A(t_a), .B(t_b), .Y0(t_y0), .Y1(t_y1), .Y2(t_y2), .Y3(t_y3)
    );

    initial begin 

        $dumpfile("Encoder.vcd");
        $dumpvars(0,encoder_tb);
        
        $display("Y3 Y2 Y1 Y0 | A B");

        //Case-1
        t_y3=0; t_y2=0; t_y1=0; t_y0=1;
        #10;
        $display("%b %b %b %b | %b %b", t_y0,t_y1,t_y2,t_y3,t_a,t_b);
        //Case-2
        t_y3=0; t_y2=0; t_y1=1; t_y0=0;
        #10;
        $display("%b %b %b %b | %b %b", t_y0,t_y1,t_y2,t_y3,t_a,t_b);
        //Case-3
        t_y3=0; t_y2=1; t_y1=0; t_y0=0;
        #10;
        $display("%b %b %b %b | %b %b", t_y0,t_y1,t_y2,t_y3,t_a,t_b);
        //Case-4
        t_y3=1; t_y2=0; t_y1=0; t_y0=0;
        #10;
        $display("%b %b %b %b | %b %b", t_y0,t_y1,t_y2,t_y3,t_a,t_b);
        $finish;
    end 
endmodule