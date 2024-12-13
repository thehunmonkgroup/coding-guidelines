# BASH CODING RULES

For any code written in Bash, you MUST obey the following rules when writing new code, or editing/refactoring existing code:

1. If needed, implement command-line argument parsing using the builtin getopts command. When defining arguments:
   * Order arguments logically: more important or required arguments first, followed by optional ones.
   * Group related arguments together.

2. Use detailed logging throughout the script.

3. Use clear, descriptive names for all functions and variables.

4. Wrap all variable references in curly brackets, e.g. `${foo}`.

5. Separate concerns by breaking down functionality into distinct functions. If any existing  functions do not follow best practices in this regard, fix them by breaking them down into distinct functions.

6. Define constants and default values clearly, at the top of the script. If you find existing hard-coded values that would be more appropriate as a constant, fix them.

7. Use appropriate exit codes to indicate script success or failure.
