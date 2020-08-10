module tabla_7(input wire A,B,C,D, output wire Y);

  assign Y = (B) | (A & D) | (~C & D);
              
endmodule


