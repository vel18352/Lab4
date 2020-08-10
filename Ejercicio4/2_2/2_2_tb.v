module testbench();

reg A, B, C;
wire Y;

tabla_6 U2(A, B, C, Y);

initial begin
  #30
  $display("A B C | Y");
  $display("------|--");
  $monitor("%b %b %b | %b", A, B, C, Y);
     A = 0; B = 0; C = 0;
  #1 A = 0; B = 0; C = 1;
  #1 A = 0; B = 1; C = 0;
  #1 A = 0; B = 1; C = 1;
  #1 A = 1; B = 0; C = 0;
  #1 A = 1; B = 0; C = 1;
  #1 A = 1; B = 1; C = 0;
  #1 A = 1; B = 1; C = 1;
end

initial
  #50 $finish;

initial begin
  $dumpfile("2_2_tb.vcd");
  $dumpvars(0, testbench);
end

endmodule
