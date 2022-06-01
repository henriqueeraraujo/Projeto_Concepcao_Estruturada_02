module ri(input CLK,
input CLR,
input Li_barra,
input Ei_barra,
input [7:0]W,
output logic [3:0]nibble_inferior,
output logic [3:0]nibble_superior);

	logic [7:0]ri;
	
	always_ff @(posedge CLK, negedge CLR)
		begin
			
			if(!CLR)
				begin
					ri <= 8'b00000000;
					nibble_inferior<= 4'bzzzz;
					nibble_superior<= 4'b0000;
				end					
			else
				begin
					
					ri <= W;
					
					if(!Li_barra)
						nibble_superior <= ri[7:4];
					if(!Ei_barra)
						nibble_inferior <= ri[3:0];
					else
						nibble_inferior <= 4'bzzzz;
					
				end

		end


endmodule 