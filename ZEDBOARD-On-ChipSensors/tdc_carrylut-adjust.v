`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:38:09 11/27/2020 
// Design Name: 
// Module Name:    tdc_carrylut-adjust 
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



module tdc_orig #(parameter size =40, parameter adsize=2)
(input clk,
output[(size*4)-1:0] out1
    );
    
  (* s = "true" *)   wire [size*4-1:0] co1;
							wire [size*4-1:0] coTemp;
  
  (* s = "true" *)   wire [size*4-1:0] do1;
  (* s = "true" *)   reg [size*4-1:0] regOut;
  (* s = "true" *)   wire [adsize-1:0] delLATCH, delLUT;     
  //(* s = "true" *)   wire [4*adsize-1:0] delOut, S, D;
  (* s = "true" *)   wire [4*adsize-1:0] CO;  
  (* s = "true" *)   wire [4*adsize-1:0] CICOConnect;    



 genvar i,j;
    generate
        for(i = 0; i < size; i = i+1) 
		  begin:gen_code_label1  
            
				
				if (i==0) begin
				
				for(j=0;	j<4;	j=j+1)
				begin:gen_code_label31
					
//				(* s = "true" *)   LDPE #(
//            .INIT(1'b0) // Initial value of latch (1'b0 or 1'b1)
//            ) LDPE_insti (
//            .Q(out1[i*4+j]), // Data output
//            .PRE(1'b0), // Asynchronous clear/reset input
//            .D(co1[i*4+j]), // Data input
//            .G(clk), // Gate input
//            .GE(1'b1) // Gate enable input
//            );
//					

				(* s = "true" *)	FDCE #(
				.INIT(1'b0) // Initial value of register (1'b0 or 1'b1)
				) FDCE_insti (
				.Q(out1[i*4+j]), // 1-bit Data output
				.C(clk), // 1-bit Clock input
				.CE(1'b1), // 1-bit Clock enable input
				.CLR(1'b0), // 1-bit Asynchronous clear input
				.D(co1[i*4+j]) // 1-bit Data input
				);

				end	
				
				 

				(* keep = "true" *) (* s = "true" *)    CARRY4 CARRY4_insti (
            .CO({co1[(((i+1)*4)-1):(i*4)]}), // 4-bit carry out
            .O(), // 4-bit carry chain XOR data out
            .CI(), // 1-bit carry cascade input CO[11]
            .CYINIT(delLUT[(adsize)-1]), // 1-bit carry initialization  delLUT[i]
            //.CYINIT(delLUT[delsize-1]), // 1-bit carry initialization  delLUT[i]
            .DI(4'h0), // 4-bit carry-MUX data in
            .S(4'hF) // 4-bit carry-MUX select input
            );
				
				end
				else begin
				  (* keep = "true" *) (* s = "true" *)    CARRY4 CARRY4_insti (
            .CO(co1[(((i+1)*4)-1):(i*4)]), // 4-bit carry out
            .O(), // 4-bit carry chain XOR data out
            .CI(co1[(i*4)-1]), // 1-bit carry cascade input
            .CYINIT(1'b0), // 1-bit carry initialization
            .DI(4'h0), // 4-bit carry-MUX data in
            .S(4'hF) // 4-bit carry-MUX select input
            );
				
			
			
			
			for(j=0;	j<4;	j=j+1)
			begin:gen_code_label31
			
//			(* s = "true" *)   LDPE #(
//            .INIT(1'b0) // Initial value of latch (1'b0 or 1'b1)
//            ) LDPE_insti (
//            .Q(out1[i*4+j]), // Data output
//            .PRE(1'b0), // Asynchronous clear/reset input
//            .D(co1[i*4+j]), // Data input
//            .G(clk), // Gate input
//            .GE(1'b1) // Gate enable input
//            );
				
			(* s = "true" *)	FDCE #(
				.INIT(1'b0) // Initial value of register (1'b0 or 1'b1)
				) FDCE_insti (
				.Q(out1[i*4+j]), // 1-bit Data output
				.C(clk), // 1-bit Clock input
				.CE(1'b1), // 1-bit Clock enable input
				.CLR(1'b0), // 1-bit Asynchronous clear input
				.D(co1[i*4+j]) // 1-bit Data input
				);
					
			end
				
				
				end
       end  
    endgenerate 

	////////////////////////// delay with LATCH
generate
        for(i = 0; i < adsize; i = i+1) 
		  begin:gen_code_label3
   
			if(i==0) begin
	
			 (* keep = "true" *) (* s = "true" *)            LUT5 #(
            .INIT(32'hffff0000) // Specify LUT Contents .INIT(32'h00000000)
                ) LUT1_insti (
                .O(delLUT[i]), // LUT general output
                //.I0(clk) // LUT input
                .I4(delLATCH[i]), // LUT input
                .I3(1'b0), // LUT input
                .I2(1'b0), // LUT input
                .I1(1'b0), // LUT input
                .I0(1'b0) // LUT input
                );
 
 
				 (* keep = "true" *) (* s = "true" *)    LDCE #(
            .INIT(1'b0) // Initial value of latch (1'b0 or 1'b1)
            ) LDCE_Delayi (
            //.Q(delLATCH[i]), // Data output
            .Q(delLATCH[i]), // Data output
            .CLR(1'b0), // Asynchronous clear/reset input
            .D(clk), // Data input
            .G(1'b1), // Gate input
            .GE(1'b1) // Gate enable input
            );
	
			end
			else begin
	
				(* keep = "true" *) (* s = "true" *)  LUT5 #(
            .INIT(32'hffff0000) // Specify LUT Contents
                ) LUT1_insti (
                .O(delLUT[i]), // LUT general output
                .I4(delLATCH[i]), // LUT input
					 .I3(1'b0), // LUT input
                .I2(1'b0), // LUT input
                .I1(1'b0), // LUT input
                .I0(1'b0) // LUT input
                );
				(* keep = "true" *) (* s = "true" *)   LDCE #(
            .INIT(1'b0) // Initial value of latch (1'b0 or 1'b1)
            ) LDCE_Delayi (
            .Q(delLATCH[i]), // Data output
            .CLR(1'b0), // Asynchronous clear/reset input
            .D(delLUT[i-1]), // Data input
            .G(1'b1), // Gate input
            .GE(1'b1) // Gate enable input
            );	 
			end			 
        end
    endgenerate





    
endmodule
