module tabla_3(input wire A,B,C, output wire Y);

  assign Y = (A & B) | (A & C);
              
endmodule


