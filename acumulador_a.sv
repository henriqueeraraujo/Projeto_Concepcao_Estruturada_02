module acumulador_a(input CLK, input Ea, input La_barra, input [7:0]W_entrada, output [7:0]W_saida, output logic [7:0] a);

	
	always @(posedge CLK)
		begin
			if(!La_barra)
				a <= W_entrada;
			if(Ea)
				W_saida <= a;
			else
				W_saida <= 8'bzzzzzzzz;		
		
		
		end

endmodule	