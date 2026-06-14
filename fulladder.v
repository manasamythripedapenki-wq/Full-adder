module full_adder(
  input A,
  input B,
  input D,
  output S,
  output C
);
  assign S= A ^ B ^ D;
  assign C= (A & B)|(B & D)|(D & A);
endmodule
