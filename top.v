module top(
    input [7:0] sw,
    output [5:0] led
);

    // Conversion wire
    wire cWire;
    // Lights
    light stairs(
        .downstairs(sw[0]),
        .upstairs(sw[1]),
        .stair_light(led[0])
    );
    adder mathy(
        .A(sw[2]),
        .B(sw[3]),
        .Y(led[1]),
        .Carry(led[2])
    );
    full_adder lsb(
        .fA(sw[4]),
        .fB(sw[6]),
        .Cin(0),
        .fY(led[3]),
        .Cout(cWire)
    );
    full_adder msb(
        .fA(sw[5]),
        .fB(sw[7]),
        .Cin(cWire),
        .fY(led[4]),
        .Cout(led[5])
    );
    
endmodule