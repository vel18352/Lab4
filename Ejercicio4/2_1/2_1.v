module tabla_5(input wire A,B,C,D, output wire Y);

  assign Y = (A & ~C) | (A & ~B) | (A & ~D) | (~B & ~C & ~D);
              
endmodule


