module barrel_shifter (
    input  wire [7:0] data_in,
    input  wire [2:0] shift_amt,
    input  wire       dir,
    output reg  [7:0] data_out
);
    always @(*) begin
        if (dir == 1'b0)
            data_out = data_in << shift_amt;
        else
            data_out = data_in >> shift_amt;
    end
endmodule
