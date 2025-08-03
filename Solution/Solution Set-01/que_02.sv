// Question Set-01, Question 2: Generate the pattern {010011000111} using SystemVerilog constraints
//===========================================================================================================
class pattern_gen;
  rand bit pattern[12]; // Array to store the pattern

    // Constraint to generate pattern
    constraint pat_010011000111 {
    foreach (pattern[i]) {
      if (i < 3)
        pattern[i] == (i == 1);         // 0 1 0
      else if (i < 6)
        pattern[i] == (i >= 4);         // 0 1 1
      else if (i < 9)
        pattern[i] == 0;                // 0 0 0
      else
        pattern[i] == 1;                // 1 1 1
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
