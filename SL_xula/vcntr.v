module Vcounter(clkv, clrv, vr, vrs, vrsp, 
               vrspq, cntrv);
					
		input clkv, clrv;
		output reg vr, vrs, vrsp, vrspq;
		output reg [9:0] cntrv;
		
		initial cntrv = 0;
		
		always@(posedge clkv)
			begin
				if(clrv == 1'b1)
					cntrv = 0;
				else
					begin
						if(cntrv < 528)
							cntrv = cntrv + 1;
						else
							cntrv = 0;
					end
			end
			
		always@(cntrv)
			begin
				if(cntrv == 0)
					begin
						vrs <= 1'b0;		vrsp <= 1'b1;
						vr <= 1'b0;			vrspq <= 1'b0;
					end
				else if(cntrv == 32)
					begin
						vr <= 1'b0;			vrspq <= 1'b1;
					end
				else if(cntrv == 512)
				begin
						vr <= 1'b1;			vrspq <= 1'b0;
				end
				else if(cntrv == 525)
					begin
						vrs <= 1'b1;		vrsp <= 1'b0;
					end
				else
					begin
						vrs <= vrs;			vrsp <= vrsp;
						vr <= vr;			vrspq <= vrspq;
					end
			end
		
endmodule
