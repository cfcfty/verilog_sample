`timescale 1ns/10ps
module testbench();
	// test for 8bit counter
	reg clk, reset;
	reg [7:0] counter_test;

	param_counter #(.N(8), .T(0))
	 		test1(
				.clk(clk), 
				.rst(reset), 
				.counter(counter_test)
				);

	initial
	begin
		clk = 0;
		forever #5 clk = ~clk;
	end

	initial
	begin
		$display("Running testbench");
		reset = 1;
		#10;
		reset = 0;
	end

	initial
	begin
		$dumpfile("out.vcd");
		$dumpvars();
	end

	initial
	begin
		#1000 $finish;
	end
	
endmodule
