// For the 2n Inputs n ouputs for an Encoder.
module encoder(Y3,Y2,Y1,Y0,A,B);
    input Y3,Y2,Y1,Y0;
    output A,B;
    assign A=(Y1|Y3);
    assign B=(Y2|Y3);
endmodule
