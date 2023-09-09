# MIPS Recursive Fibonacci

A MIPS assembly implementation of the Fibonacci function, demonstrating the power and intricacies of assembly programming.

![minimalism-fibonacci-sequence-golden-ratio-mathematics-spiral-square-black-background-numbers-geometry-monochrome-inception-wallpaper-preview](fibonacci-sequence.png)

## Table of Contents

- [Overview](#overview)
- [Usage](#usage)
- [Testing](#testing)

## Overview

The Fibonacci sequence is a series of numbers where each number is the sum of the two preceding ones, often starting with 0 and 1. This repository contains a recursive MIPS assembly implementation of the Fibonacci function, adhering to the modern Fibonacci convention:

- `fibonacci(0) = 0`
- `fibonacci(1) = 1`

## Usage

To use the Fibonacci function in your MIPS assembly project:

1. Clone the repository
2. Include the Fibonacci function in your assembly program.
3. Use the `fibonacci` label to call the function. The input `x` is passed in the `$a0` register, and the result will be in the `$v0` register.

## Testing

To ensure the Fibonacci function works accurately, a `main` function is included in the assembly file for direct testing. This testing setup allows users to directly interact and validate the correctness of the function.

### Steps:

1. **Compile and Run the Assembly File:**
   
   Depending on the simulator or environment you're using (like SPIM or MARS), open and assemble the Fibonacci MIPS assembly file. Then, run the program.

2. **Input a Number:**
   
   Once you run the program, you'll be prompted to "Enter a number:". Input any non-negative integer to compute its Fibonacci value.

3. **View the Result:**

   After entering the number, the program will display the corresponding Fibonacci value for the given number.

### Example:

```plaintext
Enter a number: 9
Fibonacci of 9 is: 34
```
---
