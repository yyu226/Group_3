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
	CLOCK_50,

	//////////// HDMI //////////
	TMDS_POSITIVE,
	TMDS_NEGTIVE,
	TMDS_CLOCK_P,
	TMDS_CLOCK_N,
	
	sync_in_1,				//Trigger signal
	sync_in_2,				//FrameReady signal
	sync_out_1,
	sync_out_2,
	
	v_sync
);

//=======================================================
//  PARAMETER declarations
//=======================================================


//=======================================================
//  PORT declarations
//=======================================================

//////////// CLOCK //////////
input 		 CLOCK_50;

//////////// HDMI //////////
output [2:0] TMDS_POSITIVE;
output [2:0] TMDS_NEGTIVE;
output       TMDS_CLOCK_P;
output	  	 TMDS_CLOCK_N;

input  sync_in_1;				//isolated PIN4
input  sync_in_2;				//PIN12
output sync_out_1;
output sync_out_2;

output v_sync;					//output pin C9
//=======================================================
//  REG/WIRE declarations
//=======================================================
reg clk_25m;
reg [7:0] red, green, blue;
reg [7:0] cdata;

reg sync_out_2r;
reg srst;
reg stch;
reg sgnl;					//singal to indicate the status of RGB data -- active high
reg [1:0] delay_st;		//11: never happens
								//10: inactive -- no VGA data camera off
								//01: transition -- VGA data on camera off
								//00: camera on							
reg [15:0] frame1;
reg [31:0] phsr3, phsr3_m;
reg [7:0] pdata;

reg [7:0] co_K;
reg [7:0] co_n;
reg [31:0] phase_inc, poff;
reg [15:0] pdt;
reg [7:0] prj_indx;


wire [31:0] phasor1;

wire reset;
wire [9:0] rown;

wire clk_25, CLOCK_50M, clk_250;
wire [7:0] cosu;
wire wrst;
wire [7:0] wdata;

wire [31:0] phasor3;
wire [7:0] cosd3;
wire goo;

initial
begin
	clk_25m = 0;
	srst = 0;
	delay_st = 2'b11;
	
	frame1 = 0;
	sync_out_2r = 0;
	
	co_K = 1; co_n = 0;
	prj_indx = 0;
end
//=======================================================
//  Structural coding
//=======================================================
dcm CLOCK_MANAGE( 
					.CLK_IN1				(CLOCK_50),
					
					.CLK_OUT1			(CLOCK_50M),
					.CLK_OUT2			(clk_250)
 );

	 
always@(posedge CLOCK_50M)
	clk_25m = ~clk_25m;

assign clk_25 = clk_25m;


//To reset the sinusoidal signal at every Row1
always@(clk_25)
begin
	if(goo == 0)
		srst = 1;
	else
		srst = 0;
end
assign wrst = srst;
//End of synchronization
	
assign reset = 1'b0;


always@(posedge SYNC_VS)
begin
	if(sync_in_1 == 1'b1)
		sgnl = 1'b1;
	else
		sgnl = 1'b0;
end

/***Control Logic Between Camara and FPGA
****SYNC_IN & SYNC_OUT
****Communicate with the camara and the host machine
****One posedge @ each Vertical Sync***/
always@(frame1)
begin
	/*case(frame1)
		0:  begin
				if(sync_in_1 == 1)
					sync_out_2r = 1'b1;
				else
					sync_out_2r = 1'b0;
			 end
		1:  sync_out_2r = 1'b0;
		2:  sync_out_2r = 1'b0;
		3:  sync_out_2r = 1'b0;
		default: sync_out_2r = 1'b0;
	endcase*/
	if(frame1 % 4 == 1)
	//begin
			//if(sync_in_1 == 1)
					sync_out_2r = 1'b1;
			//else
					//sync_out_2r = 1'b0;
	//end
	else
			sync_out_2r = 1'b0;
end
assign sync_out_2 = sync_out_2r;

//********************************************************************************

//assign sync_out_1 = ({sync_in_1, sync_in_2} == 2'b11) ? SYNC_VS : 0;
always@(negedge SYNC_VS or negedge sync_in_1)
begin
	if(sync_in_1 == 0)
		begin
			stch = 0;
			delay_st = 2'b11;
		end
	else if(sync_in_2 == 0)
		begin
			stch = 0;
			delay_st = 2'b11;				//delay_st
		end
	else begin
		case ({sync_in_1, sync_in_2})
			2'b00: begin delay_st = 2'b11;  stch = 0;  end
			2'b01: begin delay_st = 2'b11;  stch = 0;  end
			2'b10: begin delay_st = 2'b11;  stch = 0;  end				//delay_st = delay_st
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
assign sync_out_1 = (stch == 1'b1) ? SYNC_VS : 0;
//*************************************************************************************
hdmi_top  HDMI_PORT2(
					.clock_pixel			(clk_25m),
					.clock_TMDS				(clk_250),
					.iRed						(),
					.iGreen					(cosu),
					.iBlue					(),
					
					.oRequest				(goo),
					.SYNC_H					(SYNC_HS),
					.SYNC_V					(SYNC_VS),
					.TMDSp					(TMDS_POSITIVE),
					.TMDSn					(TMDS_NEGTIVE),
					.TMDSp_clock			(TMDS_CLOCK_P),
					.TMDSn_clock			(TMDS_CLOCK_N),
					.LED						()
    );

assign v_sync = SYNC_VS;
//****** Below added on August 29th 2016 ******
ddsc DDSM(
			.sclr				(wrst),
			.clk				(SYNC_HS),						//clk_25
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

always@(negedge SYNC_VS or negedge sync_in_1)
begin
		if(sync_in_1 == 0)
			frame1 = 0;
		else
		begin
			/*if(sync_in_2 == 1)
			begin
				if(frame1<479)
					frame1 = frame1 + 1;
				else
					frame1 = 0;
			end
			else
				frame1 = frame1;*/
				
			if(sync_in_2 == 1)
			begin
				if(delay_st==2'b10)
				begin
					if(frame1<479)
						frame1 = frame1 + 1;
					else
						frame1 = 0;
				end
				else
						frame1 = frame1;
			end
			else
						frame1 = frame1;
		end
end

always@(frame1)
begin
		case(co_n)
			0: poff <= 0;
			1: poff <= 32'd1073741824;
			2: poff <= 32'd2147483648;
			3: poff <= 32'd3221225472;
			default: poff <= 0;
		endcase
end

always@(frame1)
begin
		co_n <= frame1 % 4;
		co_K <= (frame1 / 4) + 1;
end


always@(frame1)
begin
		case(co_K)
			1: phase_inc = 32'd1073741824;
			2: phase_inc = 32'd536870912;
			3:	phase_inc = 32'd357913941;
			4: phase_inc = 32'd268435456;
			5: phase_inc = 32'd214748365;
			6: phase_inc = 32'd178956971;
			7: phase_inc = 32'd153391689;
			8: phase_inc = 32'd134217728;
			9: phase_inc = 32'd119304647;
		  10: phase_inc = 32'd107374182;
		  
		  11: phase_inc = 32'd97612893;
		  12: phase_inc = 32'd89478485;
		  13:	phase_inc = 32'd82595525;
		  14: phase_inc = 32'd76695845;
		  15: phase_inc = 32'd71582788;
		  16: phase_inc = 32'd67108864;
		  17: phase_inc = 32'd63161284;
		  18: phase_inc = 32'd59652324;
		  19: phase_inc = 32'd56512728;
		  20: phase_inc = 32'd53687091;
		  
		  21: phase_inc = 32'd51130563;
		  22: phase_inc = 32'd48806447;
		  23:	phase_inc = 32'd46684427;
		  24: phase_inc = 32'd44739243;
		  25: phase_inc = 32'd42949673;
		  26: phase_inc = 32'd41297762;
		  27: phase_inc = 32'd39768216;
		  28: phase_inc = 32'd38347922;
		  29: phase_inc = 32'd37025580;
		  30: phase_inc = 32'd35791394;
		  
		  31: phase_inc = 32'd34636833;
		  32: phase_inc = 32'd33554432;
		  33:	phase_inc = 32'd32537631;
		  34: phase_inc = 32'd31580642;
		  35: phase_inc = 32'd30678338;
		  36: phase_inc = 32'd29826162;
		  37: phase_inc = 32'd29020049;
		  38: phase_inc = 32'd28256364;
		  39: phase_inc = 32'd27531842;
		  40: phase_inc = 32'd26843546;
		  
		  41: phase_inc = 32'd26188825;
		  42: phase_inc = 32'd25565282;
		  43:	phase_inc = 32'd24970740;
		  44: phase_inc = 32'd24403223;
		  45: phase_inc = 32'd23860929;
		  46: phase_inc = 32'd23342214;
		  47: phase_inc = 32'd22845571;
		  48: phase_inc = 32'd22369621;
		  49: phase_inc = 32'd21913098;
		  50: phase_inc = 32'd21474836;
		  
		  51: phase_inc = 32'd21053761;
		  52: phase_inc = 32'd20648881;
		  53:	phase_inc = 32'd20259280;
		  54: phase_inc = 32'd19884108;
		  55: phase_inc = 32'd19522579;
		  56: phase_inc = 32'd19173961;
		  57: phase_inc = 32'd18837576;
		  58: phase_inc = 32'd18512790;
		  59: phase_inc = 32'd18199014;
		  60: phase_inc = 32'd17895697;
		  
		  61: phase_inc = 32'd17602325;
		  62: phase_inc = 32'd17318417;
		  63:	phase_inc = 32'd17043521;
		  64: phase_inc = 32'd16777216;
		  65: phase_inc = 32'd16519105;
		  66: phase_inc = 32'd16268816;
		  67: phase_inc = 32'd16025997;
		  68: phase_inc = 32'd15790321;
		  69: phase_inc = 32'd15561476;
		  70: phase_inc = 32'd15339169;
		  
		  71: phase_inc = 32'd15123124;
		  72: phase_inc = 32'd14913081;
		  73:	phase_inc = 32'd14708792;
		  74: phase_inc = 32'd14510025;
		  75: phase_inc = 32'd14316558;
		  76: phase_inc = 32'd14128182;
		  77: phase_inc = 32'd13944699;
		  78: phase_inc = 32'd13765921;
		  79: phase_inc = 32'd13591669;
		  80: phase_inc = 32'd13421773;
		  
		  81: phase_inc = 32'd13256072;
		  82: phase_inc = 32'd13094412;
		  83:	phase_inc = 32'd12936648;
		  84: phase_inc = 32'd12782641;
		  85: phase_inc = 32'd12632257;
		  86: phase_inc = 32'd12485370;
		  87: phase_inc = 32'd12341860;
		  88: phase_inc = 32'd12201612;
		  89: phase_inc = 32'd12064515;
		  90: phase_inc = 32'd11930465;
		  
		  91: phase_inc = 32'd11799361;
		  92: phase_inc = 32'd11671107;
		  93:	phase_inc = 32'd11545611;
		  94: phase_inc = 32'd11422785;
		  95: phase_inc = 32'd11302546;
		  96: phase_inc = 32'd11184811;
		  97: phase_inc = 32'd11069503;
		  98: phase_inc = 32'd10956549;
		  99: phase_inc = 32'd10845877;
		  100: phase_inc = 32'd10737418;
		  
		  101: phase_inc = 32'd10631107;
		  102: phase_inc = 32'd10526881;
		  103: phase_inc = 32'd10424678;
		  104: phase_inc = 32'd10324441;
		  105: phase_inc = 32'd10226113;
		  106: phase_inc = 32'd10129640;
		  107: phase_inc = 32'd10034970;
		  108: phase_inc = 32'd9942054;
		  109: phase_inc = 32'd9850842;
		  110: phase_inc = 32'd9761289;
		  
		  111: phase_inc = 32'd9673350;
		  112: phase_inc = 32'd9586981;
		  113: phase_inc = 32'd9502140;
		  114: phase_inc = 32'd9418788;
		  115: phase_inc = 32'd9336885;
		  116: phase_inc = 32'd9256395;
		  117: phase_inc = 32'd9177281;
		  118: phase_inc = 32'd9099507;
		  119: phase_inc = 32'd9023041;
		  120: phase_inc = 32'd8947849;
		  
		  default: phase_inc = 32'd0;
		endcase
end

always@(posedge SYNC_VS)
begin
		if(sync_in_2 == 1)
			prj_indx = 0;
		else
			prj_indx = prj_indx + 1;
end
assign cosu = pdata;		//(sgnl == 1'b0) ? 8'b00000000 : cdata;
//assign cosu = (prj_indx==1) ? pdata : 0;

endmodule

/************************* Thought about only projecting patterns within Exposure periods **************************/


