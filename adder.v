
module adder (
   X, Y);
 input [3:0] X;
 output [2:0] Y;
 wire t0, t1, t2;
 assign t0 = X[0] & X[2];
 assign t1 = (X[3] & t0);
 assign t2 = (X[1] & t0);
 assign Y[0] = X[0] ^ X[2];
 assign Y[2] = (X[1] & X[3]) | t2 | t1;
 assign Y[1] = t0 ^ X[1] ^ X[3];

endmodule

