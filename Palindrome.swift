/*
* Function to check if the passed string is the 
* same backwards as it is forward.
*/
func isPalindrome(_ input: String) -> Bool {
  
  let backwards = String(input.reversed());
  
  return backwards == input;
}


// String vars to hold sentences and words being built
var sentence: String = "";
var sentenceChars: String = "";
var word: String = "";

/*
* Variables to indicate whether a word or sentence is being built
* Allows program to resolve after loop if the string did not end on a 
* terminating char
*/ 
var buildingWord: Bool = true;
var buildingSentence: Bool = true;

// Arrays to hold word and sentence palindromes
var palindromeWords: [String] = [];
var palindromSentences: [String] = [];

// Take input from user and make string lower cased
var input: String;
print("Please enter a string to check: ");
input = readLine()!;
input = input.lowercased();

for char in input {

  /*
  * Logic for building word and checking if it is a palindrome.
  * Words are terminated by any character that is not alphanumeric.
  */
  if (buildingWord) {
    
    if (char.isLetter || char.isNumber) {
      word.append(char);
    } else {
      
      if (isPalindrome(word)) {
        palindromeWords.append(word);
      }

      buildingWord = false;
      word = "";
    }
    
  } else {
    if (char.isLetter || char.isNumber) {
      word.append(char);
      buildingWord = true;
    }
  }


  /*
  * Logic for building sentence and checking if it is a palindrome.
  * Sentences are terminated by ".", "!", or "?" and a new sentence 
  * will start being built.
  */
  if (char.isLetter || char.isNumber || char.isWhitespace) {
    if (!char.isWhitespace) {
        sentenceChars.append(char);
    }
    sentence.append(char);
    buildingSentence = true;
  } else if (char == "." || char == "!" || char == "?") {
    sentence.append(char);
    if (isPalindrome(sentenceChars)) {
      palindromSentences.append(sentence);
    }
    sentence = "";
    sentenceChars = "";
    buildingSentence = false;
  }

}

/*
* Resolve words and sentences being built that
* did not end with a terminating char.
*/
if (buildingWord && isPalindrome(word)) {
  palindromeWords.append(word);
}
if (buildingSentence && isPalindrome(sentenceChars)) {
  palindromSentences.append(sentence);
}

// Loop through words in palindromeWords array and output
for word in palindromeWords {
  print("'\(word)' is a palindrome word!");
}

// Loop through words in palindromeSentences array and output
for sentence in palindromSentences {
  print("'\(sentence)' is a palindrome sentence!");
}