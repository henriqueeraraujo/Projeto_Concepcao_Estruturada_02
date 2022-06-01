module rem(input 	Lm_barra, input CLK, input logic [3:0]W, output logic [3:0]ram_address);

	logic [3:0] rem;
	
	always_ff @(posedge CLK)
		begin
			if(!Lm_barra)
				begin
					rem <= W;
					ram_address <= rem;
				end	
		end
	
endmodule
		