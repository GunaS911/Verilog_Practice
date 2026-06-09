`timescale 1ns/1ps

module comparator_2bit_tb;

reg [1:0] A, B;
wire A_gt_B, A_eq_B, A_lt_B;

comparator_2bit uut (
    .A(A),
    .B(B),
    .A_gt_B(A_gt_B),
    .A_eq_B(A_eq_B),
    .A_lt_B(A_lt_B)
);

initial begin
    $dumpfile("comparator_2bit.vcd");
    $dumpvars(0, comparator_2bit_tb);

    A=2'b00; B=2'b00; #10;
    A=2'b00; B=2'b01; #10;
    A=2'b00; B=2'b10; #10;
    A=2'b00; B=2'b11; #10;

    A=2'b01; B=2'b00; #10;
    A=2'b01; B=2'b01; #10;
    A=2'b01; B=2'b10; #10;
    A=2'b01; B=2'b11; #10;

    A=2'b10; B=2'b00; #10;
    A=2'b10; B=2'b01; #10;
    A=2'b10; B=2'b10; #10;
    A=2'b10; B=2'b11; #10;

    A=2'b11; B=2'b00; #10;
    A=2'b11; B=2'b01; #10;
    A=2'b11; B=2'b10; #10;
    A=2'b11; B=2'b11; #10;

    $finish;
end

endmodule
