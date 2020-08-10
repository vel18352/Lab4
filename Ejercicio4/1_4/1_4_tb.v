module testbench();

reg A, B, C, D;
wire Y;

tabla_4 U2(A, B, C, D, Y);

initial begin
  #30
  $display("A B C D | Y");
  $display("--------|--");
  $monitor("%b %b %b %b | %b", A, B, C, D, Y);
     A = 0; B = 0; C = 0; D = 0;
  #1 A = 0; B = 0; C = 0; D = 1;
  #1 A = 0; B = 0; C = 1; D = 0;
  #1 A = 0; B = 0; C = 1; D = 1;
  #1 A = 0; B = 1; C = 0; D = 0;
  #1 A = 0; B = 1; C = 0; D = 1;
  #1 A = 0; B = 1; C = 1; D = 0;
  #1 A = 0; B = 1; C = 1; D = 1;
  #1 A = 1; B = 0; C = 0; D = 0;
  #1 A = 1; B = 0; C = 0; D = 1;
  #1 A = 1; B = 0; C = 1; D = 0;
  #1 A = 1; B = 0; C = 1; D = 1;
  #1 A = 1; B = 1; C = 0; D = 0;
  #1 A = 1; B = 1; C = 0; D = 1;
  #1 A = 1; B = 1; C = 1; D = 0;
  #1 A = 1; B = 1; C = 1; D = 1;

end

initial
  #50 $finish;

initial begin
  $dumpfile("1_4_tb.vcd");
  $dumpvars(0, testbench);
end

endmodule
