/**
* Loop to print out numbers 1 to 100
* and if they are odd or even.
*/
for x in 1...100 {
  if (x % 2 == 0) {
    print("Number \(x) is even ");
  } else {
    print("Number \(x) is odd")
  }
}
// End odd or even 


/**
* Check if number is prime.
*/
func isPrime(_ number: Int) -> String {
  
  if (number < 2) {
    return "\(number) is not prime";
  } 

    for x in 2..<number {
    if (number % x == 0) {
      return "\(number) is not prime";
    }
  }

  return "\(number) is prime";
}

print("Please enter a number to check: ");
print(isPrime(Int(readLine()!)!)); 
// End prime number check


/**
* Count the characters in a string.
*/
var count: Int = 0;

func charCount(_ input: String) -> Int {

  for _ in input {
    count += 1;    
  }

  return count;
}

print("Please enter a string: ");
print("There are \(charCount(readLine()!)) characters in this string"); 
// End string character count


/**
* Recreate the pattern shown
* in the assignment.
*/
for x in 1...4 {
  print(String(repeating: "*", count: x));
} 
// End pattern Recreation