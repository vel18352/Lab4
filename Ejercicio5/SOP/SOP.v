module tabla_1(input wire A,B,C, output wire Y);

  assign Y = (A & ~B & C) | (A & B & ~C) | (A & B & C);
              
endmodule


