module AES256(indata,inkey,enable, e_out);
input [127:0]indata;
input [255:0]inkey;
input enable;
output [127:0] e_out; 
//output [127:0] d_out;

/*
wire [127:0] in = 128'h00112233445566778899aabbccddeeff;
wire [255:0] key256 = 256'h6a09e667bb67ae853c6ef372a54ff53a510e527f9b05688c1f83d9ab5be0cd19;
*/
wire [127:0] encrypted256;
wire [127:0] decrypted256;

AES_Encrypt #(256, 14, 8) c(indata, inkey, encrypted256);
AES_Decrypt #(256, 14, 8) c2(encrypted256, inkey, decrypted256);

assign e_out = encrypted256;
assign d_out = decrypted256;

endmodule
