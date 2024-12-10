# Ada Integer Range Check Limitation
This example demonstrates a potential issue with Ada's integer range checks. While Ada offers strong type checking and range constraints, there are cases where out-of-range values might not be detected immediately.
The provided code shows a function `Check_Range` that verifies if an integer falls within a specified range. However, this check might be bypassed if the input integer comes from a source or operation that bypasses Ada's built-in range checks. For example, unchecked conversions or operations involving types with different ranges can cause this issue.
The solution illustrates one way to address this using additional checks and awareness of potential pitfalls, such as potential overflow or underflow during computation or unchecked conversion.

## How to Reproduce
Compile and run the `bug.ada` file to see the initial output. To address the potential issue, refer to `bugSolution.ada` for a more robust approach.