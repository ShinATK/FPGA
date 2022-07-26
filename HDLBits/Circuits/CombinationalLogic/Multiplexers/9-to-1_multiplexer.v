module top_module(
    input [15:0] a,b,c,d,e,f,g,h,i,
    input [3:0] sel,
    output [15:0] out
);

	// Case statements can only be used inside procedural blocks (always block)
	// This is a combinational circuit, so use a combinational always @(*) block.
	always @(*) begin
		out = '1;		// '1 is a special literal syntax for a number with all bits set to 1.
						// '0, 'x, and 'z are also valid.
						// I prefer to assign a default value to 'out' instead of using a
						// default case.
		case (sel)
			4'h0: out = a;
			4'h1: out = b;
			4'h2: out = c;
			4'h3: out = d;
			4'h4: out = e;
			4'h5: out = f;
			4'h6: out = g;
			4'h7: out = h;
			4'h8: out = i;
		endcase
	end

    // always @(*)begin
    //     case(sel)
    //         4'd0:begin out=a;end
    //         4'd1:begin out=b;end
    //         4'd2:begin out=c;end
    //         4'd3:begin out=d;end
    //         4'd4:begin out=e;end
    //         4'd5:begin out=f;end
    //         4'd6:begin out=g;end
    //         4'd7:begin out=h;end
    //         4'd8:begin out=i;end
    //         default begin out={16{1'b1}};end
    //     endcase
    // end
endmodule