function foo(x: int): int {
  if (x == 0) {
    return 1;
  } else {
    return x * foo(x - 1);
  }
}

function bar(x: int): int {
  if (x < 0) {
    return 0;
  } else {
    return foo(x);
  }
}

/* This is an example of a function that can cause a stack overflow error in Hack.
   The function foo is a recursive function that calculates the factorial of an integer.
   The function bar calls foo, but it does not check the input value.
   If the input value is too large, the function foo will call itself too many times, and this will cause a stack overflow error.
 */

function main(): void {
  echo bar(1000);
}
