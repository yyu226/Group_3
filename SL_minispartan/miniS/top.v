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
reg [31:0] phase_off_8;

reg[7:0] vs_count;
reg von;


wire reset;
wire [9:0] rown;

wire clk_25, CLOCK_50M, clk_250;
wire [7:0] cosu;
wire wrst;
wire [7:0] wdata;

wire [31:0] phasor3;
wire [7:0] cosd3;
wire goo;

wire [31:0] phase_i, phase_o;

initial
begin
	clk_25m = 0;
	srst = 0;
	delay_st = 2'b11;
	
	frame1 = 0;
	sync_out_2r = 0;
	
	co_K = 1; co_n = 0;
	prj_indx = 0;
	phase_off_8 = 0;
	
	vs_count = 0;
	von = 0;
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
	if(frame1 % 8 == 1)
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
							stch = 1;												//stch = 0;
						end
					else if(delay_st == 2'b01)
						begin
							delay_st = 2'b00;
							stch = 0;												//stch = 1;
						end
					else
						begin delay_st = 2'b00; stch = 0;  end				//stch = 1;
				    end
		endcase
	end
end
//assign sync_out_1 = (stch == 1'b1) ? SYNC_VS : 0;
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
			.pinc_in			(phase_i),						//phase_inc
			.cosine			(cosd3),
			.phase_out		(),
			.poff_in			(phase_o)							//poff
);

always@(posedge clk_25)
begin
		if(!cosd3[7])
				pdata = cosd3 + 128;
		else
				pdata = cosd3[6:0];
end

/*always@(negedge SYNC_VS or negedge sync_in_1)
begin
		if(sync_in_1 == 0)
			frame1 = 0;
		else*/
		/*begin
			if(sync_in_2 == 1)
			begin
				if(frame1<487)
					frame1 = frame1 + 1;
				else
					frame1 = 0;
			end
			else
				frame1 = frame1;
		end*/
				
			/*if(sync_in_2 == 1)
			begin
				if(delay_st==2'b10)
				begin
					if(frame1<487)								//479
						frame1 = frame1 + 1;
					else
						frame1 = 0;
				end
				else
						frame1 = frame1;
			end
			else
						frame1 = frame1;
end*/

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

always@(posedge SYNC_VS)
begin
		if(sync_in_2 == 1)
			prj_indx = 0;
		else
			prj_indx = prj_indx + 1;
end
assign cosu = pdata;		//(sgnl == 1'b0) ? 8'b00000000 : cdata;
//assign cosu = (prj_indx==1) ? pdata : 0;

/********************* Add 8 new frames **************************/
assign phase_i = (frame1 < 480) ? phase_inc : 32'd0;
assign phase_o = (frame1 < 480) ? poff : phase_off_8;

always@(frame1)
begin
		if(frame1 == 480)
				phase_off_8 <= 0;
		else if(frame1 == 481)
				phase_off_8 <= 32'd536870912;
		else if(frame1 == 482)
				phase_off_8 <= 32'd1073741824;
		else if(frame1 == 483)
				phase_off_8 <= 32'd1610612736;
		else if(frame1 == 484)
				phase_off_8 <= 32'd2147483648;
		else if(frame1 == 485)
				phase_off_8 <= 32'd2684354560;
		else if(frame1 == 486)
				phase_off_8 <= 32'd3221225472;
		else if(frame1 == 487)
				phase_off_8 <= 32'd3758096384;
		else
				phase_off_8 <= 32'd0;
end

always@(posedge SYNC_VS)
    vs_count =vs_count + 1;
	 
always@(negedge SYNC_VS or negedge sync_in_1)
begin
		if(sync_in_1 == 0)
			frame1 = 0;
		else if(sync_in_2 == 1)
		begin
				if(vs_count[0] == 0)
				begin
					if(frame1 < 487)
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
always@(posedge SYNC_VS)
begin
		if(vs_count[0] == 0)
			von = 1;
		else
			von = 0;
end
assign sync_out_1 = SYNC_VS & von;

endmodule

/************************* Thought about only projecting patterns within Exposure periods **************************/


