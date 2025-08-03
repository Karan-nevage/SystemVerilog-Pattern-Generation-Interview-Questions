// Question Set-01, Question 4: Generate the pattern {111000111000} using SystemVerilog constraints
//===========================================================================================================
class pattern_gen;
  rand bit pattern[18]; // You can extend this to any length

  	constraint pattern_gen {
    	foreach (pattern[i]) {
    	  if ((i % 6) < 3)
    	    pattern[i] == 1; // First 3 bits of every 6-bit block are 1
    	  else
    	    pattern[i] == 0; // Last 3 bits of every 6-bit block are 0
    	}
  	}
endclass

          //*****************************************
        
module top;
    pattern_gen pg;

    initial begin
        pg = new(); // Instantiate pattern_gen class
      repeat (18) begin
            assert (pg.randomize()); // Randomize to generate pattern
        end
        // Display the generated pattern
      $display("======================================================================");
      	$display("Pattern: %p", pg.pattern);
      $display("======================================================================");
    end
endmodule

//============================================================================================================      
// Code written by Karankumar Nevage
// LinkedIn: https://www.linkedin.com/in/karankumar-nevage/
