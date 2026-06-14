module test;
  reg A,B,D;
  wire S,C;
  full_adder uut(
    .A(A),
    .B(B),
    .D(D), 
    .S(S),
    .C(C)
    );
  initial begin
    $dumpfile("fulladder.vcd");
    $dumpvars(0,test);
    A=0; B=0; D=0; #10;
    A=0; B=0; D=1; #10;
    A=0; B=1; D=0; #10;
    A=0; B=1; D=1; #10;
    A=1; B=0; D=0; #10;
    A=1; B=0; D=1; #10;
    A=1; B=1; D=0; #10;
    A=1; B=1; D=1; #10;
  end
  initial begin
    $monitor("A=%b B=%b D=%b S=%b C=%b",A,B,D,S,C);
  end
endmodule

  
  
