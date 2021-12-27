module counter
(
	input clk, 
	input rst,

	output [3:0] counter	
);

	reg [3:0] count;

	always @(posedge clk)
	begin
		if (rst)
			count <= 4'b0000;
		else
			count <= count + 4'b0001;	
	end

	assign counter = count;

endmodule

`timescale 1ns/100ps
module testbench ();

	reg clk, reset;
	reg [3:0] counter_test;

	counter test1(
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
		#20;
		reset = 0;
	end

	initial
	begin
		$dumpfile("out.vcd");
		$dumpvars();
	end

	initial
	begin
		#500 $finish;
	end
	
endmodule
