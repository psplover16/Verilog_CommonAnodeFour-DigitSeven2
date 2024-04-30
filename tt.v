module tt(clk,showDigit_input,showNum_input,showDigit_output,showNum_output);
input clk;// 
input showDigit_input; // 
input showNum_input;//
// 
output reg [3:0] showDigit_output; //
output reg [5:0] showNum_output;
// 

reg[21:0] frequency;
always@(posedge clk)frequency=frequency+1;   

always @(posedge frequency[21])  begin

if(showDigit_output==5)showDigit_output = 0;


showNum_output = showNum_output+1;
if(showNum_output>9) showNum_output = 0;


showDigit_output = showDigit_output + 1;


end
endmodule

