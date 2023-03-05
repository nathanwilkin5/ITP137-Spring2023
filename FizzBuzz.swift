var fizz = "Fizz";
var buzz = "Buzz";
var fizzBuzz = "FizzBuzz";

for x in 1...100 {
  if (x % 3 == 0 && x % 5 != 0) {
    print (fizz);
  } else if (x % 5 == 0 && x % 3 != 0) {
    print(buzz);
  } else if (x % 3 == 0 && x % 5 == 0) {
    print (fizzBuzz);
  } else {
    print (x);
  }
}
