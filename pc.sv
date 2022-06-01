module pc(input CLK_barra, CLR_barra, Cp, Ep, output logic [3:0]W);

	logic [3:0] pc;
	
	always_ff @(negedge CLK_barra, negedge CLR_barra)
		begin
			if(!CLR_barra)
				pc <= 4'b0000;
			else
				begin
					if(Ep)
						begin
							W <= pc;
						end
					else
						W <= 4'bzzzz;
					if(Cp)
						pc <= pc + 4'b0001;
				end
		end
endmodule 