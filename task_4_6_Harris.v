//------------------------------------------------------------------------
// seven segment indication
    //   --a--
    //  |     |
    //  f     b
    //  |     |
    //   --g--
    //  |     |
    //  e     c
    //  |     |
    //   --d--  h
    //
    //  1 means light
//------------------------------------------------------------------------

module hex_seven_segment
(
	input [4:0] num,

	output [7:0] abcdefgh
);

	parameter [7:0] n_0 = 8'b00000000,
					n_1 = 8'b01100000,
					n_2 = 8'b11011010,
					n_3 = 8'b11110010,
					n_4 = 8'b01100110,
					n_5 = 8'b10110110,
					n_6 = 8'b10111110,
					n_7 = 8'b11100000,
					n_8 = 8'b11111110,
					n_9 = 8'b11110110,
					n_A = 8'b11101110,
					n_B = 8'b00111110,
					n_C = 8'b10011100,
					n_D = 8'b01111010,
					n_E = 8'b10011110,
					n_F = 8'b10001110;

	reg [7:0] out_num;

	always_comb
	begin
		case (num)
		4'd0: out_num = n_0;
		4'd1: out_num = n_1;
		4'd2: out_num = n_2;
		4'd3: out_num = n_3;
		4'd4: out_num = n_4;
		4'd5: out_num = n_5;
		4'd6: out_num = n_6;
		4'd7: out_num = n_7;
		4'd8: out_num = n_8;
		4'd9: out_num = n_9;
		4'd10: out_num = n_A;
		4'd11: out_num = n_B;
		4'd12: out_num = n_C;
		4'd13: out_num = n_D;
		4'd14: out_num = n_E;
		4'd15: out_num = n_F;
		default: out_num = 8'b00000001;
		endcase
	end

	assign abcdefgh = out_num;

endmodule
