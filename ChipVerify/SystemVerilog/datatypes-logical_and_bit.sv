module tb;
    logic [3:0] my_data;    // Declare 4-bit logic type variable(0, 1,x,z)
    logic       en;         // Declare 1-bit logic type variable

    initial begin
        $display("my_data=0x%0h en=%0b", my_data, en);  // Default value of logic type is X
        my_data=4'hB;  
        $display("my_data=0x%0h en=%0b", my_data, en);  // logic datatype can be driven in initial/always bolcks
        #1;
        $display("my_data=0x%0h en=%0b", my_data, en);
    end

    assign en=my_data[0];       // logic datatype can also be driven via assign statements
endmodule