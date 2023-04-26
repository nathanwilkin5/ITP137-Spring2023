var userChoice:Int = 0;
var computerChoice: Int;

// Strings to hold message related to current game conditions
let winStr: String = "You Win!";
let loseStr: String = "You lose.";
let drawStr: String = "It's a draw.";
let paperStr: String = "chose paper. ";
let scissorStr: String = "chose scissors. ";
let rockStr: String = "chose rock. ";
let computerStr: String = "The computer "
let userStr: String = "You ";

var outputStr: String = "";

while(userChoice != 4) {
  
  computerChoice = Int.random(in: 1..<4);

  
  print("Type: \n1: Rock \n2: Paper \n3: Scissors \n4: Exit");
  userChoice = Int(readLine()!)!;

  // Add computers choice to output string
  outputStr += computerStr;
  switch computerChoice {
    case 1:
      outputStr += rockStr;
    case 2:
      outputStr += paperStr;
    case 3:
      outputStr += scissorStr;
    default:
      outputStr += rockStr;
  }

  // Add users choice to output string and handle game logic
  outputStr += userStr;
  switch userChoice {
    case 1:
      outputStr += rockStr;
    
      if(computerChoice == 1) {
        outputStr += drawStr;
      } else if (computerChoice == 2) {
        outputStr += loseStr;
      } else if (computerChoice == 3) {
        outputStr += winStr;
      }
    case 2:
      outputStr += paperStr;
     
      if(computerChoice == 1) {
        outputStr += winStr;
      } else if (computerChoice == 2) {
        outputStr += drawStr;
      } else if (computerChoice == 3) {
        outputStr += loseStr;
      }
    case 3:
      outputStr += scissorStr;
      
    if(computerChoice == 1) {
        outputStr += loseStr;
      } else if (computerChoice == 2) {
        outputStr += winStr;
      } else if (computerChoice == 3) {
        outputStr += drawStr;
      }
    case 4:
      outputStr = "Exiting";
    default:
      outputStr = "Invalid input. Try again";
  }

  // Print game results and reset output string
  print(outputStr);
  outputStr = "";
}
