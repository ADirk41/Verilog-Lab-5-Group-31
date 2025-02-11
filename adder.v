module adder(
    input A, B,
    output Y,
    output Carry
);

    assign Y = A ^ B;
    assign Carry = A & B;

endmodule