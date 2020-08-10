module tabla_1(input wire A,B,C, output wire Y);

  assign Y = ~A & ~C | A & C | ~B & ~C;
              
endmodule


