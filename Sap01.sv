module Sap01(input clockS, input clrS, output logic[7:0]WS, output logic [7:0] dS);

	
 
	logic [3:0] ri_superior;
	
	logic CpS, EpS, Lm_barraS, CE_barraS, Li_barraS, Ei_barraS, La_barraS, EaS, SuS, EuS, Lb_barraS, Lo_barraS;
	logic ram_addressS;
	logic [7:0] aS ;
	logic [7:0] bS ;
	
	
	controle meucontrole(.clock(clockS), .clr(clrS), .ri(ri_superior), .Cp(CpS), .Ep(EpS), .Lm_barra(Lm_barraS), .CE_barra(CE_barraS), .Li_barra(Li_barraS), .Ei_barra(Ei_barraS), .La_barra(La_barraS), .Ea(EaS), .Su(SuS), .Eu(EuS), .Lb_barra(Lb_barraS), .Lo_barra(Lo_barraS));
	pc meupc(.CLK_barra(clockS), .CLR_barra(clrS), .Cp(CpS), .Ep(EpS), .W(WS));
	rem meurem(.Lm_barra(Lm_barraS), .CLK(clockS), .W(WS[3:0]), .ram_address(ram_addressS));
	ram minharam(.CE_barra(CE_barraS), .address(ram_addressS), .W(WS));
	ri meuri(.CLK(clockS), .CLR(clrS), .Li_barra(Li_barraS), .Ei_barra(Ei_barraS), .W(WS), .nibble_inferior(WS), .nibble_superior(ri_superior));
	registrador_b meu_registrador_b(.CLK(clockS), .Lb_barra(Lb_barraS), .W(WS), .b(bS));
	acumulador_a meu_acumulador_a(.CLK(clockS), .Ea(EaS), .La_barra(La_barraS), .W_entrada(WS), .W_saida(WS), .a(aS));
	somador_subtrator meu_somador_subtrator(.Su(SuS), .Eu(EuS), .a(aS), .b(bS), .W(WS));
	registrador_d meu_registrador_d(.CLK(clockS), .Lo_barra(Lo_barraS), .W(WS), .d(dS));
	
	
	
	
	
endmodule 