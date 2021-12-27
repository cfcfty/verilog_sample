// counter with selection of bit depth and invoice direction
module param_counter

#(	
	parameter N = 8, // bit depth
	parameter T = 0 //  invoice direction; 0 for addotion; 1 for substraction;
 )

(
	input clk, 
	input rst,

	output [N-1:0] counter	
);

	reg [N-1:0] count;

	always @(posedge clk)
	begin
		if (rst)
			count <= '0;
		else
		begin
			if(!T)
				count <= count + 1;
			else
				count <= count - 1;			
		end		
	end

	assign counter = count;

endmodule
