module Sap01(input clock, input clr, output logic[7:0]W);

	
 
	logic [3:0] ri_superior;
	logic [3:0] ri_inferior;
	
	logic CpS, EpS, Lm_barraS, CE_barraS, Li_barraS, Ei_barraS, La_barraS, EaS, SuS, EuS, Lb_barraS, Lo_barraS;
	
	controle meucontrolador(.clock(clock), .clr(clr), .ri(ri_superior), .Cp(CpS), .Ep(EpS), .Lm_barra(Lm_barraS), .CE_barra(CE_barraS), .Li_barra(Li_barraS), .Ei_barra(Ei_barraS), .La_barra(La_barraS), .Ea(EaS), .Su(SuS), .Eu(EuS), .Lb_barra(Lb_barraS), .Lo_barra(Lo_barraS));
	
	
	
endmodule 