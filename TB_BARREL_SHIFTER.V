module tb_barrel_shifter;
    reg [7:0] data_in;
    reg [2:0] shift_amt;
    reg       dir;
    wire [7:0] data_out;

    barrel_shifter dut (.data_in(data_in), .shift_amt(shift_amt), .dir(dir), .data_out(data_out));

    initial begin
        $monitor("Time=%0t | Data=%b | Shift=%d | Dir=%b | Out=%b", $time, data_in, shift_amt, dir, data_out);

        data_in = 8'b10101010; dir = 0; shift_amt = 3; #10;
        data_in = 8'b10101010; dir = 1; shift_amt = 3; #10;
        data_in = 8'b00001111; dir = 0; shift_amt = 2; #10;
        data_in = 8'b11110000; dir = 1; shift_amt = 2; #10;
        data_in = 8'b00000001; dir = 0; shift_amt = 7; #10;
        data_in = 8'b10000000; dir = 1; shift_amt = 7; #10;
        $finish;
    end
endmodule
