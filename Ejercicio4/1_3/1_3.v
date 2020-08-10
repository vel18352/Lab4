module tabla_3(input wire A,B,C,D, output wire Y);

  assign Y = (~A & ~B & ~C & ~D) | (~A & ~B & C & D) | (~A & B & ~C & D) | (~A & B & C & ~D) | (A & ~B & ~C & D) | (A & ~B & C & ~D) | (A & B & ~C & ~D) | (A & B & C & D);
              
endmodule


