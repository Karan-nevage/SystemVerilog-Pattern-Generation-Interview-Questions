// Question Set-01, Question 3: Generate the pattern {110011001100} using SystemVerilog constraints
//===========================================================================================================
class pattern_gen;
  rand bit pattern[12]; // You can extend this to any length

  	constraint pattern_cons {
    	foreach (pattern[i]) {
      		if ((i % 4) < 2)
       		pattern[i] == 1; // First two bits of every 4-bit block are 1
      		else
        	pattern[i] == 0; // Last two bits of every 4-bit block are 0
    	}
  	}
endclass

module top;
    pattern_gen pg;

    initial begin
        pg = new(); // Instantiate pattern_gen class
      	repeat (12) begin
            assert (pg.randomize()); // Randomize to generate pattern
        end
        // Display the generated pattern
      $display("===========================================================");
      	$display("Pattern: %p", pg.pattern);
      $display("===========================================================");
    end
endmodule

    //============================================================================================================      
// Code written by Karankumar Nevage
// LinkedIn: https://www.linkedin.com/in/karankumar-nevage/
