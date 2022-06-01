module ram(input CE_barra,input logic [3:0]address, output logic [7:0]W);

	always_comb
		begin
			if(CE_barra)
				W <= 8'bzzzzzzzz;
			else
				begin
					case(address)
						4'h0: W <= 8'b00000110;
						4'h1: W <= 8'b00010111;
						4'h2: W <= 8'b00011000;
						4'h3: W <= 8'b00101001;
						4'h4: W <= 8'b1110xxxx;
						4'h5: W <= 8'b1111xxxx;
						4'h6: W <= 8'b00000001;
						4'h7: W <= 8'b00000011;
						4'h8: W <= 8'b00000010;
						4'h9: W <= 8'b00000011;
						4'ha: W <= 8'b00000000;
						4'hb: W <= 8'b00000000;
						4'hc: W <= 8'b00000000;
						4'hd: W <= 8'b00000000;
						4'he: W <= 8'b00000000;
						4'hf: W <= 8'b00000000;
					endcase
				end
			end
	
endmodule 