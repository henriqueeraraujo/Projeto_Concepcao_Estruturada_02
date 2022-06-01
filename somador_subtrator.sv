module somador_subtrator(input Su, input Eu, input [7:0]a, input [7:0]b, output [7:0]W);

	logic [7:0] s;
	
	always
		begin
			if(Su)
				s <= a -s;
			else
				s <= a + b;
				
			if(Eu)
				W <= s;
			else
				W <= 8'bzzzzzzzz;
		
		end	

endmodule 