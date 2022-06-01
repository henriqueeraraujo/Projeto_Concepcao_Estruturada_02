module registrador_d(input CLK, input Lo_barra, input [7:0]W, output logic [7:0] d, output logic teste1);

	
	
	always_ff @(posedge CLK)
		begin
			if(!Lo_barra)
				d <= W;
		end

endmodule 