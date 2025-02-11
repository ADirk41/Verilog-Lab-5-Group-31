// Implement module called full_adder
module full_adder(
    input fA, fB, Cin,
    output fY, Cout
);

    // Eq
    assign fY = fA ^ fB ^ Cin; // A ^ B ^ C
    assign Cout = (fA & fB) | (fA & Cin) | (fB & Cin);

endmodule 