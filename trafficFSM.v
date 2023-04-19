
module traffic(
	input clk, rst,go,
	output reg [1:0] hw1,
	output reg [1:0] hw2,
	output reg [1:0] fw1,
	output reg [1:0] fw2,
	output reg [4:0] state);
	parameter S0=5'd0,S1=5'd1,S2=5'd2,
	S3=5'd3,S4=5'd4,S5=5'd5,
	S6=5'd6,S7=5'd7,S8=5'd8,
	S9=5'd9,S10=5'd10,S11=5'd11,
	S12=5'd12,S13=5'd13,S14=5'd14,
	S15=5'd15,S16=5'd16,S17=5'd17;
	reg [4:0] ps;  
	integer count=-1; 
	parameter d0=1,d1=2,d2=30,d3=2,d4=10,
	d5=2,d6=1,d7=2,d8=15,d9=2,d10=5,d11=2,
	d12=10,d13=2,d14=1,d15=2,d16=15,d17=3;
	parameter green=2'b00, yellow=2'b01,red=2'b10,
	redyellow=2'b11;
	always@(posedge clk or posedge rst or go)
		begin		
			if(rst==1)
				begin
					ps<=S0;
					count=-1;  
				end
			else begin
				case(ps)
				S0:if(count<d0)	begin
					ps<=S0;
					count=count+1;
					end
					else  begin
					count=0;
					if(go)ps<=S1;
					end
				S1: if(count<d1) begin
					ps<=S1;
					count=count+1;
					end
				    else  begin
					count=0;
					if(go)ps<=S2;
					end
				S2: if(count<d2) begin
					ps<=S2;
					count=count+1;
					end
				    else  begin
					count=0;
					if(go)ps<=S3;
					end
				S3: if(count<d3) begin
					ps<=S3;
					count=count+1;
					end
				    else  begin
					count=0;
					if(go)ps<=S4;
					end
				S4: if(count<d4) begin
					ps<=S4;
					count=count+1;
					end
				    else  begin
					count=0;
					if(go)ps<=S5;
					end
				S5: if(count<d5) begin
					ps<=S5;
					count=count+1;
					end
				    else  begin
					count=0;
					if(go)ps<=S6;
					end
				S6:if(count<d6)	begin
					ps<=S6;
					count=count+1;
					end
				    else  begin
					count=0;
					if(go)ps<=S7;
					end
				S7: if(count<d7) begin
					ps<=S7;
					count=count+1;
					end
				    else  begin	
					count=0;
					if(go) ps<=S8;
					end
				S8: if(count<d8) begin
					ps<=S8;
					count=count+1;
					end
				    else  begin	
					count=0;
					if(go) ps<=S9; 
					end
				S9: if(count<d9) begin
					ps<=S9;
					count=count+1;
					end
				    else  begin
					count=0;
					if(go) ps<=S10; 
					end
				S10: if(count<d10) begin
					ps<=S10;
					count=count+1;
					end
				    else  begin
					count=0;
					if(go) ps<=S11; 
					end
				S11: if(count<d11) begin
					ps<=S11;
					count=count+1;
					end
				    else  begin
					count=0;
					if(go) ps<=S12; 
					end
				S12: if(count<d12) begin
					ps<=S12;
					count=count+1;
					end
				    else  begin
					count=0;
					if(go) ps<=S13; 
					end
				S13: if(count<d13) begin
					ps<=S13;
					count=count+1;
					end
				    else  begin
					count=0;
					if(go) ps<=S14; 
					end
				S14: if(count<d14) begin
					ps<=S14;
					count=count+1;
					end
				    else  begin
					count=0;
					if(go) ps<=S15;
					end
				S15: if(count<d15) begin
					ps<=S15;
					count=count+1;
					end
				    else  begin	
					count=0;
					if(go) ps<=S16;	
					end
				S16: if(count<d16) begin
					ps<=S16;
					count=count+1;
					end
				    else  begin
					count=0;
					if(go) ps<=S17;	
					end
				S17: if(count<d17) begin
					ps<=S17;
					count=count+1;
					end
				    else  begin
					count=0;
					if(go)ps<=S0;	
					end
			endcase
		end	 	
	end																		 													
	
	assign state=ps;
			
	always@(ps)
		begin
			case(ps)
				S0:begin	
					hw1<=red;
					hw2<=red;
					fw1<=red;
					fw2<=red;
					
				end
				S1:begin
					hw1<=redyellow;
					hw2<=redyellow;
					fw1<=red;
					fw2<=red;
				end
				S2:begin
					hw1<=green;
					hw2<=green;
					fw1<=red;
					fw2<=red;
				end
				S3:begin
					hw1<=green;
					hw2<=yellow;
					fw1<=red;
					fw2<=red;	 
				end
				S4:begin
					hw1<=green;
					hw2<=red;
					fw1<=red;
					fw2<=red;  
				end
				S5:begin
					hw1<=yellow;
					hw2<=red;
					fw1<=red;
					fw2<=red;	 
				end	
				S6:begin
					hw1<=red;
					hw2<=red;
					fw1<=red;
					fw2<=red;
					
				end
				S7:begin
					hw1<=red;
					hw2<=red;
					fw1<=redyellow;
					fw2<=redyellow;	 
				end
				S8:begin
					hw1<=red;
					hw2<=red;
					fw1<=green;
					fw2<=green;	  
				end
				S9:begin
					hw1<=red;
					hw2<=red;
					fw1<=green;
					fw2<=yellow;   
				end
				S10:begin
					hw1<=red;
					hw2<=red;
					fw1<=green;
					fw2<=red;	 
				end
				S11:begin
					hw1<=red;
					hw2<=red;
					fw1<=yellow;
					fw2<=redyellow;		
				end
				S12:begin
					hw1<=red;
					hw2<=red;
					fw1<=red;
					fw2<=green;	
				end
				S13:begin
					hw1<=red;
					hw2<=red;
					fw1<=red;
					fw2<=yellow;   
				end
				S14:begin
					hw1<=red;
					hw2<=red;
					fw1<=red;
					fw2<=red;  
				end
				S15:begin
					hw1<=red;
					hw2<=redyellow;
					fw1<=red;
					fw2<=red;	
				end	
				S16:begin
					hw1<=red;
					hw2<=green;
					fw1<=red;
					fw2<=red;	 
				end
	 		 	S17:begin
					hw1<=red;
					hw2<=yellow;
					fw1<=red;
					fw2<=red; 
				end	 
			endcase
		end
endmodule

module memory(input [4:0] address,output reg [7:0] data);
	//address is the S number in b
	//data is the sequence of outputs 	{hw1,hw2,fw1,fw2}=8 bits 
	reg [7:0] mem [17:0]='{8'b10011010,8'b10001010,8'b10111010,8'b10101010,8'b10101001,8'b10101000,
						   8'b10100111,8'b10100010,8'b10100001,8'b10100000,8'b10101111,8'b10101010,
						   8'b01101010,8'b00101010,8'b00011010,8'b00001010,8'b11111010,8'b10101010};
					     
	assign data=mem[address];
endmodule
	
	
`timescale 1 s/ 1 ms  
module tb_traffic;		  			
	reg clk,rst,go;
	reg [4:0] address;
	wire [7:0] data; 
	wire [4:0]state;
	wire [1:0] hw1;	
	wire [1:0] hw2;
	wire [1:0] fw1;	
	wire [1:0] fw2;	 	  
	traffic tb(.clk(clk),.rst(rst),.go(go),.hw1(hw1),.hw2(hw2),.fw1(fw1),.fw2(fw2),.state(state));
	assign address=state;
	memory rom(.address(address),.data(data));	 
	initial
 		begin
			clk=1'b0;  
			forever #0.1 clk=~clk;
		 end
	initial
		begin
 			rst=1'b1;
			go=1'b1;   
			#1
			rst=1'b0;	
			check;	//	verification task
			$monitor("TIME = %d, reset = %b, go = %b, highway signal 1 = %h, highway signal 2 = %h,farm way signal 1= %h, farm way signal 2= %h",$time,rst ,go,hw1,hw2,fw1,fw2);	
			//#15	 go=1'b0;
			#20	 $finish;
 		  end			
    task check;
	begin
		reg [7:0]val;
		assign val={fw1,fw2,hw1,hw2};
		
		if(data==val)			  
			$monitor("state=%d is true, data=%b, value=%b ",state,data,val);
		 else
			$monitor("state=%d is false, data=%b, value=%b",state,data,val);
	end
	endtask		   
endmodule
															   
					
		
			
					                                        