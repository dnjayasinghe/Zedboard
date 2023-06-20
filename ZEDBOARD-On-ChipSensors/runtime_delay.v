`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:53:36 06/20/2023 
// Design Name: 
// Module Name:    runtime_delay 
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
module runtime_delay(
   input 		clk_in,
	input	[4:0]	delay,
	output		clk_delay);


		
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

	

endmodule
