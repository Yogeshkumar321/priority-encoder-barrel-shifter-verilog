module tb_priority_encoder;
    reg [7:0] in;
    wire [2:0] out;
    wire valid;

    priority_encoder_8to3 dut (.in(in), .out(out), .valid(valid));

    initial begin
        $monitor("Time=%0t | Input=%b | Output=%b | Valid=%b", $time, in, out, valid);
        in = 8'b00000000; #10;
        in = 8'b00000001; #10;
        in = 8'b00000100; #10;
        in = 8'b00010000; #10;
        in = 8'b10000000; #10;
        in = 8'b11100000; #10;
        in = 8'b01000000; #10;
        in = 8'b00001000; #10;
        $finish;
    end
endmodule
