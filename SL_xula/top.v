`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:37:16 08/25/2016 
// Design Name: 
// Module Name:    top 
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
module top(

	//////////// CLOCK //////////
	CLOCK_12,

	//////////// VGA //////////
	VGA_B,
	VGA_BLANK_N,
	VGA_CLK,
	VGA_G,
	VGA_HS,
	VGA_R,
	VGA_SYNC_N,
	VGA_VS,
	
	psave_n,
	
	sync_in_1,				//Trigger signal
	sync_in_2,				//FrameReady signal
	sync_out_1,
	sync_out_2,
	iso_gnd
);

//=======================================================
//  PARAMETER declarations
//=======================================================


//=======================================================
//  PORT declarations
//=======================================================

//////////// CLOCK //////////
input 		          		CLOCK_12;

//////////// VGA //////////
output		     [7:0]		VGA_B;
output		          		VGA_BLANK_N;
output		          		VGA_CLK;
output		     [7:0]		VGA_G;
output		          		VGA_HS;
output		     [7:0]		VGA_R;
output		          		VGA_SYNC_N;
output		          		VGA_VS;
//output led;
output psave_n;

input sync_in_1;				//isolated PIN4
input sync_in_2;				//PIN12
output sync_out_1;
output sync_out_2;
output iso_gnd;

//=======================================================
//  REG/WIRE declarations
//=======================================================
reg clk_25m;
reg [7:0] red, green, blue;

reg sync_out_2r;
reg srst;
reg stch;					//switch of the frame trigger to the camera
reg sgnl;					//singal to indicate the status of RGB data -- active high
reg [1:0] delay_st;		//11: never happens
								//10: inactive -- no VGA data camera off
								//01: transition -- VGA data on camera off
								//00: camera on							
reg [15:0] frame1;
reg [7:0] pdata;

reg [7:0] co_K;
reg [7:0] co_n;
reg [31:0] phase_inc, poff;


wire [31:0] phasor1, phasor2;

wire reset;
wire hon, von;
wire d, de, deb, debc;
wire r, rs, rsp, rspq;
wire rover;
wire [9:0] coln, rown;

wire clk_25, clk_50;
wire [7:0] cosu;
wire wrst;								//sclr

wire [7:0] cosd3;


initial
begin
	frame1 = 0;
	clk_25m = 0;
	srst = 0;
	delay_st = 2'b11;
	
	frame1 = 0;
	
	co_K = 1; co_n = 0;
end
//=======================================================
//  Structural coding
//=======================================================
dcm CLOCK_MANAGE( 
					.CLK_IN1				(CLOCK_12),
					
					.CLK_OUT1			(clk_50)
 );

	 
always@(posedge clk_50)
	clk_25m = ~clk_25m;

assign clk_25 = clk_25m;

//To reset the sinusoidal signal at every Row1
always@(rown)
begin
	if(rown == 0)
		srst = 1;
	else
		srst = 0;
end
assign wrst = srst;
//End of synchronization
	
assign VGA_CLK = clk_25;
	
assign reset = 1'b0;

assign	VGA_BLANK_N = 1'b1;
assign	VGA_SYNC_N = 1'b1;

assign psave_n = 1'b1;
assign iso_gnd = 1'b0;


//assign cosu = (cosd[7] == 1) ? cosd[6:0] : cosd + 128;

always@(rown)
begin
		red 	<= cosu;
		green <= cosu;
		blue 	<= cosu;
end

always@(posedge VGA_VS)
begin
	if(sync_in_1 == 1'b1)
		sgnl = 1'b1;
	else
		sgnl = 1'b0;
end
	
assign cosu = pdata;

always@(negedge VGA_VS or negedge sync_in_1)
begin
	if(sync_in_1 == 0)
		begin
			stch = 0;
			delay_st = 2'b11;
		end
	else if(sync_in_2 == 0)
		begin
			stch = 0;
			delay_st = delay_st;				//2'b11
		end
	else begin
		case ({sync_in_1, sync_in_2})
			2'b00: begin delay_st = 2'b11;  stch = 0;  end
			2'b01: begin delay_st = 2'b11;  stch = 0;  end
			2'b10: begin delay_st = delay_st;  stch = 0;  end				//delay_st = 2'b11
			2'b11: begin
					if(delay_st == 2'b11)
						begin
							delay_st = 2'b10;
							stch = 0;
						end
					else if(delay_st == 2'b10)
						begin
							delay_st = 2'b01;
							stch = 0;
						end
					else if(delay_st == 2'b01)
						begin
							delay_st = 2'b00;
							stch = 1;
						end
					else
						begin delay_st = 2'b00; stch = 1;  end
				    end
		endcase
	end
end

Hcounter HCM1(clk_25, reset, d, de, deb, debc, rover, coln);
Vcounter VCM1(rover, reset, r, rs, rsp, rspq, rown);

rsff HSYNC(clk_25, reset, de, deb, VGA_HS);					//D
rsff HDATO(clk_25, reset, d, debc, hon);						//O
rsff VSYNC(clk_25, reset, rs, rsp, VGA_VS);					//N
rsff VDATO(clk_25, reset, r, rspq, von);						//E
	
rgboen RED(VGA_R, hon, von, red);
rgboen GREEN(VGA_G, hon, von, green);
rgboen BLUE(VGA_B, hon, von, blue);
/***Control Logic Between Camara and FPGA
****SYNC_IN & SYNC_OUT
****Communicate with the camara and the host machine
****One posedge @ each Vertical Sync***/
always@(frame1)
begin
	case(frame1)
		0:  begin
				if(sync_in_1 == 1)
					sync_out_2r = 1'b1;
				else
					sync_out_2r = 1'b0;
			 end
		1:  sync_out_2r = 1'b1;
		2:  sync_out_2r = 1'b1;
		3:  sync_out_2r = 1'b1;
		default : sync_out_2r = 1'b1;
	endcase
end
assign sync_out_2 = sync_out_2r;

assign sync_out_1 = (stch == 1'b1) ? VGA_VS : 0;

//**********************SET SCREEN WHITE IF frame==0***********************************
//assign wdata = (frame==1) ? 8'b11111111 : cdata;


//****** Below added on August 29th 2016 ******
ddsc DDSM(
			.sclr				(wrst),
			.clk				(VGA_HS),
			.pinc_in			(phase_inc),
			.cosine			(cosd3),
			.phase_out		(),
			.poff_in			(poff)
);

always@(posedge clk_25)
begin
		if(!cosd3[7])
				pdata = cosd3 + 128;
		else
				pdata = cosd3[6:0];
end

always@(negedge VGA_VS or negedge sync_in_1)
begin
		if(sync_in_1 == 0)
			frame1 = 0;
		else
		begin
			if(sync_in_2 == 1)
			begin
				if(frame1<480)
					frame1 = frame1 + 1;
				else
					frame1 = 0;
			end
			else
				frame1 = frame1;
		end
end

always@(frame1)
begin
		case(co_n)
			0: poff <= 0;
			1:	poff <= 32'd536870912;
			2: poff <= 32'd1073741824;
			3: poff <= 32'd1610612736;
			4: poff <= 32'd2147483648;
			5: poff <= 32'd2684354560;
			6: poff <= 32'd3221225472;
			7: poff <= 32'd3758096384;
			default: poff <= 0;
		endcase
end

always@(frame1)
begin
		co_n <= frame1 % 8;
		co_K <= (frame1 / 8) + 1;
end


always@(frame1)
begin
		case(co_K)
			1: phase_inc = 32'd536870912;
			2: phase_inc = 32'd268435456;
			3:	phase_inc = 32'd178956971;
			4: phase_inc = 32'd134217728;
			5: phase_inc = 32'd107374182;
			6: phase_inc = 32'd89478485;
			7: phase_inc = 32'd76695845;
			8: phase_inc = 32'd67108864;
			9: phase_inc = 32'd59652324;
		  10: phase_inc = 32'd53687091;
		  
		  11: phase_inc = 32'd48806447;
		  12: phase_inc = 32'd44739243;
		  13:	phase_inc = 32'd41297762;
		  14: phase_inc = 32'd38347922;
		  15: phase_inc = 32'd35791394;
		  16: phase_inc = 32'd33554432;
		  17: phase_inc = 32'd31580642;
		  18: phase_inc = 32'd29826162;
		  19: phase_inc = 32'd28256364;
		  20: phase_inc = 32'd26843546;
		  
		  21: phase_inc = 32'd25565282;
		  22: phase_inc = 32'd24403223;
		  23:	phase_inc = 32'd23342214;
		  24: phase_inc = 32'd22369621;
		  25: phase_inc = 32'd21474836;
		  26: phase_inc = 32'd20648881;
		  27: phase_inc = 32'd19884108;
		  28: phase_inc = 32'd19173961;
		  29: phase_inc = 32'd18512790;
		  30: phase_inc = 32'd17895697;
		  
		  31: phase_inc = 32'd17318417;
		  32: phase_inc = 32'd16777216;
		  33:	phase_inc = 32'd16268816;
		  34: phase_inc = 32'd15790321;
		  35: phase_inc = 32'd15339169;
		  36: phase_inc = 32'd14913081;
		  37: phase_inc = 32'd14510025;
		  38: phase_inc = 32'd14128182;
		  39: phase_inc = 32'd13765921;
		  40: phase_inc = 32'd13421773;
		  
		  41: phase_inc = 32'd13094412;
		  42: phase_inc = 32'd12782641;
		  43:	phase_inc = 32'd12485370;
		  44: phase_inc = 32'd12201612;
		  45: phase_inc = 32'd11930465;
		  46: phase_inc = 32'd11671107;
		  47: phase_inc = 32'd11422785;
		  48: phase_inc = 32'd11184811;
		  49: phase_inc = 32'd10956549;
		  50: phase_inc = 32'd10737418;
		  
		  51: phase_inc = 32'd10526881;
		  52: phase_inc = 32'd10324441;
		  53:	phase_inc = 32'd10129640;
		  54: phase_inc = 32'd9942054;
		  55: phase_inc = 32'd9761289;
		  56: phase_inc = 32'd9586981;
		  57: phase_inc = 32'd9418788;
		  58: phase_inc = 32'd9256395;
		  59: phase_inc = 32'd9099507;
		  60: phase_inc = 32'd8947849;
		  
		  default: phase_inc = 32'd0;
		endcase
end

endmodule
