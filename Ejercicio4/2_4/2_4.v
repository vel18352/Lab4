module tabla_8(input wire A,B,C, output wire Y);

  assign Y = (B) | (~A & ~C);
              
endmodule


