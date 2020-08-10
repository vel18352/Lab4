module tabla_4(input wire A,B,C,D, output wire Y);

  assign Y = (A & ~C & ~D) | (A & B) | (B & D) | (A & C);
              
endmodule


