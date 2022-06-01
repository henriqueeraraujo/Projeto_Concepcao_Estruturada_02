module controle(clock, clr, ri, Cp, Ep, Lm_barra, CE_barra, Li_barra, Ei_barra, La_barra, Ea, Su, Eu, Lb_barra, Lo_barra);

	input clock, clr;
	input logic [3:0] ri;
	output logic Cp, Ep, Lm_barra, CE_barra, Li_barra, Ei_barra, La_barra, Ea, Su, Eu, Lb_barra, Lo_barra;
	
	
	logic [2:0] estado_atual;
	
	parameter t1=0, t2=1, t3=2, t4=3, t5=4, t6=5;
	
	logic [3:0] LDA = 4'b0000;
	logic [3:0] ADD = 4'b0001;
	logic [3:0] SUB = 4'b0010;
	logic [3:0]	OUT = 4'b1110;
	logic [3:0]	HLT = 4'b1111;
	
	always_ff @(posedge clock)
		begin
			if(!clr)
				estado_atual= t1;
			else
				begin
					case(estado_atual)
						t1: estado_atual <= t2;
						t2: estado_atual <= t3;
						t3: estado_atual <= t4;
						t4: estado_atual <= t5;
						t5: estado_atual <= t6;
						t6: estado_atual <= t1;
					endcase
				end	
		end
		
	always_comb
		begin
			case(estado_atual)
				t1: {Cp, Ep, Lm_barra, CE_barra, Li_barra, Ei_barra, La_barra, Ea, Su, Eu, Lb_barra, Lo_barra} <= 12'b010111100011;
				t2: {Cp, Ep, Lm_barra, CE_barra, Li_barra, Ei_barra, La_barra, Ea, Su, Eu, Lb_barra, Lo_barra} <= 12'b101111100011;
				t3: {Cp, Ep, Lm_barra, CE_barra, Li_barra, Ei_barra, La_barra, Ea, Su, Eu, Lb_barra, Lo_barra} <= 12'b001001100011;
				t4:
					case(ri)
						LDA: {Cp, Ep, Lm_barra, CE_barra, Li_barra, Ei_barra, La_barra, Ea, Su, Eu, Lb_barra, Lo_barra} <= 12'b000110100011;
						ADD: {Cp, Ep, Lm_barra, CE_barra, Li_barra, Ei_barra, La_barra, Ea, Su, Eu, Lb_barra, Lo_barra} <= 12'b000110100011;
						SUB: {Cp, Ep, Lm_barra, CE_barra, Li_barra, Ei_barra, La_barra, Ea, Su, Eu, Lb_barra, Lo_barra} <= 12'b000110100011;
						OUT: {Cp, Ep, Lm_barra, CE_barra, Li_barra, Ei_barra, La_barra, Ea, Su, Eu, Lb_barra, Lo_barra} <= 12'b001111110010;
						HLT: {Cp, Ep, Lm_barra, CE_barra, Li_barra, Ei_barra, La_barra, Ea, Su, Eu, Lb_barra, Lo_barra} <= 12'b001111100011;
					endcase
				t5:
					case(ri)
						LDA: {Cp, Ep, Lm_barra, CE_barra, Li_barra, Ei_barra, La_barra, Ea, Su, Eu, Lb_barra, Lo_barra} <= 12'b001011000011;
						ADD: {Cp, Ep, Lm_barra, CE_barra, Li_barra, Ei_barra, La_barra, Ea, Su, Eu, Lb_barra, Lo_barra} <= 12'b001011100001;
						SUB: {Cp, Ep, Lm_barra, CE_barra, Li_barra, Ei_barra, La_barra, Ea, Su, Eu, Lb_barra, Lo_barra} <= 12'b001011100001;
						OUT: {Cp, Ep, Lm_barra, CE_barra, Li_barra, Ei_barra, La_barra, Ea, Su, Eu, Lb_barra, Lo_barra} <= 12'b001111100011;
						HLT: {Cp, Ep, Lm_barra, CE_barra, Li_barra, Ei_barra, La_barra, Ea, Su, Eu, Lb_barra, Lo_barra} <= 12'b001111100011;
					endcase
				t6:
					case(ri)
						LDA: {Cp, Ep, Lm_barra, CE_barra, Li_barra, Ei_barra, La_barra, Ea, Su, Eu, Lb_barra, Lo_barra} <= 12'b001111100011;
						ADD: {Cp, Ep, Lm_barra, CE_barra, Li_barra, Ei_barra, La_barra, Ea, Su, Eu, Lb_barra, Lo_barra} <= 12'b001111000111;
						SUB: {Cp, Ep, Lm_barra, CE_barra, Li_barra, Ei_barra, La_barra, Ea, Su, Eu, Lb_barra, Lo_barra} <= 12'b001111001111;
						OUT: {Cp, Ep, Lm_barra, CE_barra, Li_barra, Ei_barra, La_barra, Ea, Su, Eu, Lb_barra, Lo_barra} <= 12'b001111100011;
						HLT: {Cp, Ep, Lm_barra, CE_barra, Li_barra, Ei_barra, La_barra, Ea, Su, Eu, Lb_barra, Lo_barra} <= 12'b001111100011;
					endcase
			endcase
		end

endmodule 