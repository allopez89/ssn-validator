## Test Cases

- Req - 1: The program must receive a social security number and validate it.
  - Cri - 1 - 1: The program must print if the given SSN is "Valid" or "Invalid".
    - Sce - 1 - 1 - 1: "111-11-1111" -> "Valid"
    - Sce - 1 - 1 - 2: "304-57-0357" -> "Valid"
    - Sce - 1 - 1 - 3: "000-54-1010" -> "Invalid"
    - Sce - 1 - 1 - 4: "101-00-5478" -> "Invalid"  
  - Cri - 1 - 2: The Program must print an error if the given SSN is empty, contains a letter or an invalid separator.
    - Sce - 1 - 2 - 1: "" -> "SSN can't be empty"
    - Sce - 1 - 2 - 2: "101-0A-104A" -> "SSN contains letters or an invalid separator (-)"
    - Sce - 1 - 2 - 1: "134 50 2121" -> "SSN contains letters or an invalid separator (-)"
    - Sce - 1 - 2 - 2: "134502121" -> "SSN contains letters or an invalid separator (-)"
    - Sce - 1 - 2 - 3: "134/50/2121" -> "SSN contains letters or an invalid separator (-)"