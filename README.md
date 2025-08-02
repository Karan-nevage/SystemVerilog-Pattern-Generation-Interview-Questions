# SystemVerilog-Pattern-Generation-Interview-Questions

## Overview
This repository contains solved SystemVerilog pattern generation problems commonly asked in technical interviews. It includes documented code, problem statements, and testbenches to help engineers master pattern generation techniques, such as sequences, randomization, and constraints, for interview preparation.

**Advice**: Try solving the problems in the `questions/` folder on your own first. If you get stuck, refer to the solutions in the `solutions/` folder for guidance.

## Solution Links
- **Set 1 Solutions**: Execute on [EDA Playground](https://www.edaplayground.com/x/gGpC).
- **Set 2 Solutions**: Execute on [EDA Playground](https://www.edaplayground.com/x/gGphfg).
  (More coming soon...)

## How to Run

### Using EDA Playground
1. Access the EDA Playground link for the desired set from the **Solution Links** section.
2. In the EDA Playground project, open `design.sv`.
3. Modify the include directive in `design.sv` to select the desired question by changing the line:
   - For Question 1, use `` `include "que_01.sv" ``.
   - For Question 2, use `` `include "que_02.sv" ``.
4. Select QuestaSim or any compatible SystemVerilog simulator as the tool.
5. Set the language to SystemVerilog.
6. Click **Run** to execute and view the output in the console.

### Using Local Tools
1. Copy the solution code from `solutions/Solution_Set-XX/que_XX.sv` (e.g., `solutions/Solution_Set-01/que_01.sv`).
2. Copy `testbench.sv` from the repository root.
3. Modify `testbench.sv` to include the desired question (e.g., `` `include "Solution_Set-01/que_01.sv" ``).
4. Compile and run using a SystemVerilog simulator (e.g., QuestaSim, VCS) in your local environment.
5. Check the console for the output (e.g., pattern `0 1 0 2 0 3 0 4 0 5` for Set 1, Question 1).

## Contributing
Contributions are welcome! Follow these steps:
1. Add new questions to `questions/Question_Set-XX/` (e.g., `que_XX.sv`).
2. Provide corresponding solutions in `solutions/Solution_Set-XX/` (e.g., `que_XX.sv`).
3. Ensure proper formatting, technical comments, and attribution in all files.
4. Update `testbench.sv` comments with new question references.
5. Submit a pull request with a clear description of your additions.

## Author
- **Name**: Karankumar Nevage
- **LinkedIn**: [https://www.linkedin.com/in/karankumar-nevage/](https://www.linkedin.com/in/karankumar-nevage/)
- **Email**: karanpr9423@gmail.com

## License
This repository is licensed under the Apache License 2.0. See [LICENSE](LICENSE) for details.
