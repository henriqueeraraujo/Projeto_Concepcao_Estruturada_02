module registrador_b(input CLK, input Lb_barra, input [7:0]W, output logic [7:0] b);

	
	
	always_ff @(posedge CLK)
		begin
			if(!Lb_barra)
				b <= W;
	
		end	
	
endmodule 