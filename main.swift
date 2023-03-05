// User input
var input = "";

// Current char in the string
var char: Character;

// Determine if first value has been initialized
var isInit = false;

// Most frequent char
var mostFrequent: Character;
mostFrequent = "a";

//  All characters and their counts
var characters = [Character: Int]();

func mostFrequentCharacter(_ input: String) {
  // Loop through chars in the passed String
  for char in input {

    // Check if first iteration of loop
    if (isInit) {
      characters[char] = (characters[char] ?? 0) + 1;
      if (characters[char]! > characters[mostFrequent]!) {
        mostFrequent = char;
      } 
    } else if (!isInit) {
        characters[char] = 1;
        mostFrequent = char;
        isInit = true;
    } 
  } 
  // Print most frequent char and its count
   print("The most frequently occuring character is \(mostFrequent), which occured " +
      "\(characters[mostFrequent]!) times.");
}

// Reset values to allow new strings to be checked
func resetValues() {
  characters.removeAll();
  isInit = false;
}

// Allow the user to keep inputing strings, and checking them until
// "exit" is entered.
while (input != "exit") {
  print("Enter the string to be checked: ");
  print("Type exit to end: ");
  input = readLine()!;
  if (input != "exit") {
    mostFrequentCharacter(input);
    resetValues();
  }
}

