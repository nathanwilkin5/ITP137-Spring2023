for x in 1...100 {
  if (x % 2 == 0) {
    print("Number \(x) is even ");
  } else {
    print("Number \(x) is odd")
  }
}

var iteration: Int = 2;
var number: Int = 0;

print("Please enter a number to check: ");
number = Int(readLine()!)!; 

while (true) {


  
  for x in 2...<number {
    if (number % x == 0) {
      print("\(number) is not prime");
      break;
    }
  }
  
  if (number != iteration && number % iteration == 0) {
    print("\(number) is not a prime number");
    break;
  } else if (number == iteration){
    print("\(number) is a prime number");
  }
  
  iteration += 1;
}

func isPrime(_ number: Int) -> String {
    if (number < 2) {
    print("\(number) is not prime");
    
  }
  
}