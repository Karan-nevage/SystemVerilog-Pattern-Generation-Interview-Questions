// Question Set-01, Question 1: Generate the pattern 0 1 0 2 0 3 0 4 0 5 using SystemVerilog constraints
//===========================================================================================================

class pattern_gen;
    rand int pattern[10]; // Array to store the pattern

    // Constraint to generate pattern: 0 at even indices, (i+1)/2 at odd indices
    constraint pattern_cons {
        foreach (pattern[i]) {
            if (i % 2 == 0) pattern[i] == 0; // Even indices are 0
            else pattern[i] == (i + 1) / 2;  // Odd indices are 1, 2, 3, 4, 5
        }
    }
endclass

module top;
    pattern_gen pg;

    initial begin
        pg = new(); // Instantiate pattern_gen class
        repeat (10) begin
            assert (pg.randomize()); // Randomize to generate pattern
        end
        // Display the generated pattern
        $display("============================================");
        $display("Pattern: %p", pg.pattern);
        $display("============================================");
    end
endmodule

//============================================================================================================      
// Code written by Karankumar Nevage
// LinkedIn: https://www.linkedin.com/in/karankumar-nevage/