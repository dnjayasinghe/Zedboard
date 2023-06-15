`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:32:49 03/26/2020 
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
	input 	clk,
	input 	rx,
	//input 	rstn,
	output [2:0]led,
	output 	tx,
	output PWR,
	output HB
    );

parameter CounterSize=31;
parameter SAMPLESTOCOLLECT=2048;
parameter SAMPLESTOTRANSFER=2048;


reg [9:0] counter;
reg [CounterSize:0] counter1=0;
reg [CounterSize:0] counter2=0;
wire SensorBusy;
wire clk0, clk1, clk5, clk0t, clk3t, clk4t, clk2, clk3, clk4, clk5x; 
wire roClk;
wire [35:0] control0;		

//////////////////////////
///   FSMs and States  ///
/////////////////////////

reg  [9:0] fsm=0;
reg  [9:0] fsm1=0;


//////////////////////////
///   Regs and Wires  ///
/////////////////////////

reg  [127:0] Kin, Din;
wire [127:0] Dout;
reg Krdy, Drdy, EncDec, RSTn, EN;
wire Kvld, Dvld, BSY;

reg CE, C, R, inc;
wire [9:0] Q;
reg  [7:0] TXdata;
wire  [7:0] RXdata;

reg [7:0] data1   [2047:0]; 
reg [7:0] data2   [SAMPLESTOCOLLECT-1:0]; 
reg [7:0] data3   [1023:0]; 

reg [7:0] dataCt   [15:0]; 
reg [7:0] dataIn   [15:0]; 
reg [7:0] dataKey   [15:0]; 
reg [10:0] addr1;
reg [10:0] addr2;
reg [2:0] encCounter;
reg [9:0] total, total_old;
reg [7:0] senData  [3:0]; 

reg [4:0] delay=15;
wire [4:0] Cdelay;

wire  TXDone, txActive, rxReady, delClk, err, done;
reg  transmitReg;
reg start, trig, AESResetn, one, adj, adjEN;
reg  [7:0]  count;


assign led	=counter1[27:25];
assign HB 	=counter2[28];
reg busy;
assign SensorBusy = busy;
assign PWR=1;

//////////////////////////
///   Clock and UARTs  ///
/////////////////////////

clock clock(clk, clk0, clk1, clk2, clk3, clk4, clk5t);
uart_tx uartTX(.i_Clock(clk1), .i_Tx_DV(transmitReg), .i_Tx_Byte(TXdata), .o_Tx_Active(txActive), .o_Tx_Serial(tx), .o_Tx_Done(TXDone) );		
uart_rx uartRX(.i_Clock(clk1), .i_Rx_Serial(rx), .o_Rx_DV(rxReady), .o_Rx_Byte(RXdata) );		

//////////////////////////
///   On-chip Sensor   ///
/////////////////////////
parameter regsize =511;
parameter AES_COUNT = 3;
parameter ADSIZE=160;

wire 	[ADSIZE-1:0] out;		
reg 	[ADSIZE-1:0] outReg;		
wire	[7:0] processedOut;
reg	[ADSIZE-1:0] adjust;

//tdc_top tp (clk0, out);
tdc_decode tdc_decode(.clk(clk0), .rst(AESResetn), .chainvalue_i(outReg), .coded_o(processedOut)); 



//////////////////////////
///   AES LOOP        ///
/////////////////////////
wire [127:0] DoutTemp [AES_COUNT-1:0] ;
wire  [AES_COUNT-1:0] DvldTemp;

assign Dout = DoutTemp[0] &  DoutTemp[1] &  DoutTemp[2];
assign Dvld = &DvldTemp;



 genvar i;
	 generate
        for(i = 0; i < AES_COUNT; i = i+1) 
		  begin:gen_code_label
			aes_tiny aes_tinyi ( .clk(clk1),  .rst(Drdy),  .din(Din), .key(Kin), .dout(DoutTemp[i]),  .done(DvldTemp[i]) );
			//AES_Composite_enc aes_tinyi (.Kin(Kin), .Din(Din), .Dout(DoutTemp[i]), .Krdy(Krdy), .Drdy1(Drdy), .EncDec(1'b0), .Kvld(), .Dvld(DvldTemp[i]), .EN(EN), .BSY(), .CLK(clk1), .RSTn(AESResetn));
	end
	endgenerate
	

//(* IODELAY_LOC = "X1Y0" *)
IDELAYE2 #(
.CINVCTRL_SEL("FALSE"), // Enable dynamic clock inversion (FALSE, TRUE)
.DELAY_SRC("DATAIN"), // Delay input (IDATAIN, DATAIN)
.HIGH_PERFORMANCE_MODE("TRUE"), // Reduced jitter ("TRUE"), Reduced power ("FALSE")
.IDELAY_TYPE("VAR_LOAD"), // FIXED, VARIABLE, VAR_LOAD, VAR_LOAD_PIPE
.IDELAY_VALUE(0), // Input delay tap setting (0-31)
.PIPE_SEL("TRUE"), // Select pipelined mode, FALSE, TRUE
.REFCLK_FREQUENCY(200.0), // IDELAYCTRL clock input frequency in MHz (190.0-210.0).
.SIGNAL_PATTERN("CLOCK") // DATA, CLOCK input signal
)
IDELAYE2_inst0 (
.CNTVALUEOUT(), // 5-bit output: Counter value output
.DATAOUT(clk3t), // 1-bit output: Delayed data output
.C(clk3), // 1-bit input: Clock input  refclk
.CE(1'b0), // 1-bit input: Active high enable increment/decrement input
.CINVCTRL(1'b0), // 1-bit input: Dynamic clock inversion input
.CNTVALUEIN(dataIn[14]), // 5-bit input: Counter value input
.DATAIN(clk3), // 1-bit input: Internal delay data input
.IDATAIN(), // 1-bit input: Data input from the I/O
.INC(1'b0), // 1-bit input: Increment / Decrement tap delay input
.LD(1'b1), // 1-bit input: Load IDELAY_VALUE input
.LDPIPEEN(1'b1), // 1-bit input: Enable PIPELINE register to load data input
.REGRST(1'b0) // 1-bit input: Active-high reset tap-delay input
);



//(* IODELAY_LOC = "X1Y0" *)
IDELAYE2 #(
.CINVCTRL_SEL("FALSE"), // Enable dynamic clock inversion (FALSE, TRUE)
.DELAY_SRC("DATAIN"), // Delay input (IDATAIN, DATAIN)
.HIGH_PERFORMANCE_MODE("TRUE"), // Reduced jitter ("TRUE"), Reduced power ("FALSE")
.IDELAY_TYPE("VAR_LOAD"), // FIXED, VARIABLE, VAR_LOAD, VAR_LOAD_PIPE
.IDELAY_VALUE(7), // Input delay tap setting (0-31)
.PIPE_SEL("TRUE"), // Select pipelined mode, FALSE, TRUE
.REFCLK_FREQUENCY(200.0), // IDELAYCTRL clock input frequency in MHz (190.0-210.0).
.SIGNAL_PATTERN("CLOCK") // DATA, CLOCK input signal
)
IDELAYE2_inst1 (
.CNTVALUEOUT(), // 5-bit output: Counter value output
.DATAOUT(clk4t), // 1-bit output: Delayed data output
.C(clk4), // 1-bit input: Clock input  refclk
.CE(1'b0), // 1-bit input: Active high enable increment/decrement input
.CINVCTRL(1'b0), // 1-bit input: Dynamic clock inversion input
.CNTVALUEIN(dataIn[15]), // 5-bit input: Counter value input
.DATAIN(clk4), // 1-bit input: Internal delay data input
.IDATAIN(), // 1-bit input: Data input from the I/O
.INC(1'b0), // 1-bit input: Increment / Decrement tap delay input
.LD(1'b1), // 1-bit input: Load IDELAY_VALUE input
.LDPIPEEN(1'b1), // 1-bit input: Enable PIPELINE register to load data input
.REGRST(1'b0) // 1-bit input: Active-high reset tap-delay input
);



//(*LOC="IDELAY_X1Y1"*)
//(* IODELAY_LOC = "X1Y0" *)
IDELAYCTRL IDELAYCTRL_inst (
.RDY(), // 1-bit output: Ready output
.REFCLK(clk2), // 1-bit input: Reference clock input  //CLKOUTREF
.RST(1'b0) // 1-bit input: Active high reset input
);

always @(posedge clk) begin
		counter2 <= counter2+1;
end

///////////////////////////////////
///  Sample Onchip sensor FSM   ///
///////////////////////////////////
localparam 	SEN_RESET 	= 8'h00,
		SEN_WAIT  	= 8'h01,
		SEN_CAPTURE	= 8'h02,
		SEN_WRAP_UP	= 8'h03;

always @(posedge clk0) begin
   
	if(Drdy==1 & fsm1==0) begin
		   data2[addr2] <= 250;//processedOut;
			//dataRaw[addr2]  <= out;
			outReg <= out;
			//addr2 <= 0;
			fsm1  <=1;
			addr2 <= addr2 +1;
			
			
	end
	else if(fsm1==1) begin
	      outReg <= addr2;// out;    
			
			if(Dvld==1) begin
				data2[addr2] <= 255;
			end
			else begin
				data2[addr2] <=  processedOut;
			end 
			addr2 <= addr2 +1;
			if(addr2==SAMPLESTOCOLLECT) begin
				fsm1<=0;
				addr2 <=0;	
			end
	end

end


/////////////////////////////
///  AES and Main FSM 	  ///
/////////////////////////////
localparam	MAIN_RESET		= 8'h00,
		MAIN_DELAY_WAIT		= 8'h01,
		MAIN_DELAY_SET		= 8'h02,
		MAIN_DELAY_WRAPUP	= 8'h03,
		MAIN_AES_RESET		= 8'h04,
		MAIN_AES_SET_KEY	= 8'h05,
		MAIN_AES_SET_PT		= 8'h06,
		MAIN_AES_ENCRYPT	= 8'h07,
		MAIN_AES_WAIT		= 8'h08,
		MAIN_PT_SEND		= 8'h09,
		MAIN_PT_WAIT		= 8'h0A,
		MAIN_KEY_SEND		= 8'h0B,
		MAIN_KEY_WAIT		= 8'h0C,
		MAIN_CT_SEND		= 8'h0D,
		MAIN_CT_WAIT		= 8'h0E,
		MAIN_SEN_SEND		= 8'h0F,
		MAIN_SEN_WAIT		= 8'h10,	
		MAIN_SEN_DELAY		= 8'h11,	
		MAIN_WRAPUP		= 8'h12;	
			
		

	
		MAIN_DELAY_WAIT	= 8'h01,
	

always @(posedge clk1) begin
		
		if (fsm==0) begin
		     
			  if(RXdata==250)  begin
				  fsm <=1;
				  inc <=1;
				  encCounter 	<= encCounter + 1;
			  end
			  else if(RXdata >=0 & RXdata <= 31) begin
				  fsm <=1;
				  inc <=0;
				  delay <= RXdata;
				  adjust <= RXdata + 1;
				  
			  end
			  
			  adjEN <=0;
		end
		else if (fsm==1) begin
			//Kin <=128'h0;
			//Din <=128'h0;
			busy   <=1;			
			EncDec <=counter1[24];
			EN <=0;
			AESResetn  <=0;
			Krdy <=0;
			Drdy <=0;
			addr1 <= 0;
			counter1<= counter1+1;
			R  <=0;
			CE <=0;
			fsm <=2;
			adj <=1;
	
		end
		else if (fsm==2) begin
			
			AESResetn  <=1;
			R<=1;
			if(inc==1) begin
				delay <= delay +1;
				adjust <= delay +1;
			end
			//	adj	<=0;
			//end
			fsm <=3;
					//counter1 <=0;
				//end
		end
		else if (fsm==3 ) begin
			EN		<=1;
			Krdy <=1;
			Kin  <=128'h000102030405060708090a0b0c0d0ef0;
			fsm<=4;
					
		end
	
		else if (fsm==4 ) begin
		
			Din <= {Cdelay, 00000, encCounter , Dout[111:0]};//128'h0000ffff0000ffff0000ffff0000ffff;					
			Krdy <=0;
			fsm<= 5;
			R <=1;
				dataKey[0] <= Kin[127:120];
				dataKey[1] <= Kin[119:112];
				dataKey[2] <= Kin[111:104];
				dataKey[3] <= Kin[103:96];
				dataKey[4] <= Kin[95:88];
				dataKey[5] <= Kin[87:80];
				dataKey[6] <= Kin[79:72];
				dataKey[7] <= Kin[71:64];
				dataKey[8] <= Kin[63:56];
				dataKey[9] <= Kin[55:48];
				dataKey[10] <= Kin[47:40];
				dataKey[11] <= Kin[39:32];
				dataKey[12] <= Kin[31:24];
				dataKey[13] <= Kin[23:16];
				dataKey[14] <= Kin[15:8];
				dataKey[15] <= Kin[7:0];
		end
		
		else if (fsm==5) begin
			   dataIn[0] <= Din[127:120];
				dataIn[1] <= Din[119:112];
				dataIn[2] <= Din[111:104];
				dataIn[3] <= Din[103:96];
				dataIn[4] <= Din[95:88];
				dataIn[5] <= Din[87:80];
				dataIn[6] <= Din[79:72];
				dataIn[7] <= Din[71:64];
				dataIn[8] <= Din[63:56];
				dataIn[9] <= Din[55:48];
				dataIn[10] <= Din[47:40];
				dataIn[11] <= Din[39:32];
				dataIn[12] <= Din[31:24];
				dataIn[13] <= Din[23:16];
				dataIn[14] <= Din[15:8];
				dataIn[15] <= Din[7:0];
			R 	<=0;
			Drdy <=1;
			CE   <=1;
			fsm<= 6;
			addr1 <= 0;
		end
		
		else if(fsm==6) begin  // key rdy
			Drdy <=0;
			//transmitReg <=1;
			//data1[addr1] <= 9;
			addr1 <= addr1+1;
			if(Dvld==1) begin
				dataCt[0] <= Dout[127:120];
				dataCt[1] <= Dout[119:112];
				dataCt[2] <= Dout[111:104];
				dataCt[3] <= Dout[103:96];
				dataCt[4] <= Dout[95:88];
				dataCt[5] <= Dout[87:80];
				dataCt[6] <= Dout[79:72];
				dataCt[7] <= Dout[71:64];
				dataCt[8] <= Dout[63:56];
				dataCt[9] <= Dout[55:48];
				dataCt[10] <= Dout[47:40];
				dataCt[11] <= Dout[39:32];
				dataCt[12] <= Dout[31:24];
				dataCt[13] <= Dout[23:16];
				dataCt[14] <= Dout[15:8];
				dataCt[15] <= Dout[7:0];
				CE   <=0;
			end
			if(addr1==1023) begin
				fsm<=7;
				addr1 <= 0;
				counter1 <=0;
			end
		end
		
		else if(fsm==7) begin
			busy   <=0;
			transmitReg <=1;
			fsm<=8;
			TXdata<=dataIn[addr1];
			addr1 <= addr1+1;
		end
	else if(fsm==8) begin  // key rdy
			transmitReg <=0;
			fsm<=9;
		
		end
		
	else if(fsm==9 & TXDone==1) begin  // key rdy
			
			if(addr1==16) begin
				fsm<=11;
				addr1 <=0;
				end
			else
				fsm<=7;
		
		end

	
	
		else if(fsm==11) begin 
			transmitReg <=1;
			fsm<=12;
			TXdata<=dataKey[addr1];
			addr1 <= addr1+1;
		end
	else if(fsm==12) begin  // key rdy
			transmitReg <=0;
			fsm<=13;
		
		end
		
		else if(fsm==13 & TXDone==1) begin  // key rdy
			
			if(addr1==16) begin
				fsm<=14;
				addr1 <=0;
				end
			else
				fsm<=11;
		
		end
	
	
		else if(fsm==14) begin 
			transmitReg <=1;
			fsm<=15;
			TXdata<=dataCt[addr1];
			addr1 <= addr1+1;
		end
	else if(fsm==15) begin  // key rdy
			transmitReg <=0;
			fsm<=16;
		   count <= 0;
		end
		
		else if(fsm==16 & TXDone==1) begin  // key rdy
			
			if(addr1==16) begin
				fsm<=20;
				addr1 <=0;
			end
			else  begin
				fsm<=14;
			end	
		end
		else if(fsm==20) begin  // key rdy
			transmitReg <=1;
			fsm<=21;
				TXdata<=data2[addr1];
		end
		else if(fsm==21) begin  // key rdy
			transmitReg <=0;
			fsm<=22;
		
		end
		
		else if(fsm==22 & TXDone==1) begin  // key rdy
			
			if(addr1==2047) begin
				fsm<=23;
				counter1 <=0;
				addr1 <=0;
			end
			else begin
				fsm<=20;
				addr1 <= addr1+1;
		   end
		end
		
		
		else if (fsm==23) begin
		
				counter1<= counter1+1;
				if(counter1[12]==1) begin
				   fsm <=0;
					counter1<=0;
					adjEN   <=1;
				end
		end
	
		
end

endmodule
