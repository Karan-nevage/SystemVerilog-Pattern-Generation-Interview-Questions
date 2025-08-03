// Question Set-01, Question 5: Generate the pattern {01010101} using SystemVerilog constraints
//===========================================================================================================
class pattern_gen;
  rand bit pattern[16]; // You can extend this to any length

  	constraint pattern_gen {
    	foreach (pattern[i]) {
      		pattern[i] == (i % 2 == 0) ? 0 : 1;
    	}
  	}
endclass

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
