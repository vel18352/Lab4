module tabla_2(input wire A,B,C, output wire Y);

  assign Y = (~A | ~B | ~C) & (~A | ~B | C) & (~A | B | ~C) & (~A | B | C) & (A | ~B | ~C);
              
endmodule


