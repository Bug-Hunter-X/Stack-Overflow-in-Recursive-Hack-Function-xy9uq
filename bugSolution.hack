function foo(x: int): int {
  if (x == 0) {
    return 1;
  } else {
    return x * foo(x - 1);
  }
}

function bar(x: int): int {
  if (x < 0 || x > 12) { // Added input validation
    return 0;
  } else {
    return foo(x);
  }
}

function factorial(n: int): int {
  var result: int = 1;
  for (var i: int = 2; i <= n; i = i + 1) {
    result = result * i;
  }
  return result;
}

function main(): void {
  echo bar(5);
  echo factorial(10); //Using iterative approach
}
