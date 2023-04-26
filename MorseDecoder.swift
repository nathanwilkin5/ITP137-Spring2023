let alphaNumericToMorse: [Character: String] = [
    "a": ".-", "b": "-...", "c": "-.-.", "d": "-..", "e": ".", "f": "..-.",
    "g": "--.", "h": "....", "i": "..", "j": ".---", "k": "-.-", "l": ".-..",
    "m": "--", "n": "-.", "o": "---", "p": ".--.", "q": "--.-", "r": ".-.",
    "s": "...", "t": "-", "u": "..-", "v": "...-", "w": ".--", "x": "-..-",
    "y": "-.--", "z": "--..", "0": "-----", "1": ".----", "2": "..---",
    "3": "...--", "4": "....-", "5": ".....", "6": "-....", "7": "--...",
    "8": "---..", "9": "----."
]

let morseToAlphaNumeric: [String: Character] = alphaNumericToMorse.reduce(into: [:]) { dict, pair in dict[pair.value] = pair.key;
}

func decode(_ input: String) -> String {
  var output: String = "";
  var whiteSpaceCount: Int = 0;
  
  var morseChar: String = "";
  var buildingChar: Bool = false;

  var word: String = "";
  var buildingWord: Bool = false;
  
  for char in input {
    
    if (!char.isWhitespace) {
      morseChar.append(char);
      buildingChar = true;
      whiteSpaceCount = 0;
    } else if (char.isWhitespace) {
      if (buildingChar) {
        if let value = morseToAlphaNumeric[morseChar] {
          word.append(value);
          buildingWord = true;
        }
        morseChar = "";
        buildingChar = false;
      }
      whiteSpaceCount += 1;
    }

    if (whiteSpaceCount == 3 && buildingWord) {
      output += word;
      output += " ";
      word = "";
      buildingWord = false;
    }
  }

  if (buildingWord) {
    output += word;
  }

  return output;
}

func encode(_ input: String) -> String {
  var output: String = "";
  var currentChar: Character;

    for char in input {
      currentChar = Character(char.lowercased());
      
    if let value = alphaNumericToMorse[currentChar] {
      output.append(value);
      output += " ";
    } else if (currentChar.isWhitespace) {
      output += String(repeating: " ", count: 3);
    }
  }

  return output;
}

var menu: Int = 0;



while(menu != 3) {
  print("Type: \n1: Decode  \n2: Encode  \n3: Exit");
  menu = Int(readLine()!)!;
  
  switch menu {
    case 1:
      print("Enter string to decode: ");
      print(decode(readLine()!));
    case 2:
      print("Enter string to encode: ");
      print(encode(readLine()!));
    case 3: 
      print("Exiting");
    default: 
      print("Invalid entry. Try again.");
  }
}
