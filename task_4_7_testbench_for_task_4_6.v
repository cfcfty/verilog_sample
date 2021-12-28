`timescale 1ns/1ps
module testbench_for_hex_segment();

	reg [4:0] num_input;
	reg [7:0] num_result;

	hex_seven_segment test_module(
		.num(num_input),
		.abcdefgh(num_result)						
	);

	initial
	begin
		#5;
		num_input = 4'd0;
		#5;
		num_input = 4'd1;
		#5;
		num_input = 4'd2;
		#5;
		num_input = 4'd3;
		#5;
		num_input = 4'd4;
		#5;
		num_input = 4'd5;
		#5;
		num_input = 4'd6;
		#5;
		num_input = 4'd7;
		#5;
		num_input = 4'd8;
		#5;
		num_input = 4'd9;
		#5;
		num_input = 4'd10;
		#5;
		num_input = 4'd11;
		#5;
		num_input = 4'd12;
		#5;
		num_input = 4'd13;
		#5;
		num_input = 4'd14;
		#5;
		num_input = 4'd15;
		#5;														
	end

	
	initial
	begin
		$dumpfile("out.vcd");
		$dumpvars();
	end

	initial
	begin
		#100 $finish;
	end
endmodule
