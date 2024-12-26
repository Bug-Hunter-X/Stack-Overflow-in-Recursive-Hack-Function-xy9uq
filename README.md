# Stack Overflow in Hack Recursive Function

This repository demonstrates a stack overflow error in a recursive function written in Hack. The `foo` function calculates the factorial of a number recursively, and if the input is too large, it will exceed the maximum recursion depth, causing a stack overflow.

## Bug Description

The `bar` function calls the recursive `foo` function without any input validation. When a large number is passed to `bar`, such as 1000, the recursive calls in `foo` lead to exceeding the call stack's limit, causing a stack overflow error.

## Solution

The solution involves adding input validation to the `bar` function to prevent large inputs that would lead to excessive recursion. We also introduce an iterative approach for calculating factorials to avoid recursion altogether, and therefore the stack overflow error. 
