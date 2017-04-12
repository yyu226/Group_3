`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:00:11 08/30/2016 
// Design Name: 
// Module Name:    cosine 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module cosine(
    );
always@(negedge VGA_VS or negedge sync_in_1)
begin
		if(sync_in_1 == 0)
			frame1 = 0;
		else
		begin
			if(sync_in_2 == 1)
			begin
				if(frame1<480)
					frame1 = frame + 1;
				else
					frame1 = 0;
			end
			else
				frame1 = frame;
		end
end

always@(frame1)
begin
		co_K <= (frame1 / 8) + 1;
		co_n <= frame1 % 8;
end
always@(co_n or co_K)
begin
		pdt = co_n*co_K;
		phase_inc_m = 32'd11339 * (480 + pdt);
		phase_inc_m1 =  phase_inc_m / co_K;
		phase_inc = phase_inc_m1 / 8;
end

endmodule
