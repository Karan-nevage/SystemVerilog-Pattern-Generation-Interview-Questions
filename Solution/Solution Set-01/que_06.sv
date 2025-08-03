// Question Set-01, Question 6: Generate the pattern {00110011001} using SystemVerilog constraints
//===========================================================================================================
class pattern_gen;
  rand bit pattern[16]; // You can extend this to any length

  	constraint pattern_gen {
    	foreach (pattern[i]) {
      		if ((i % 4) < 2)
      		  pattern[i] == 0;
      		else
      		  pattern[i] == 1;
    	}
  	}
endclass
          

module top;
    pattern_gen pg;

    initial begin
        pg = new(); // Instantiate pattern_gen class
      repeat (16) begin
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
