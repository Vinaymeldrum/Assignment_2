//Displaying the given exercise.

class Exercise10 {
  String sentence = "Do you want to build a snowman?";
  String sentenceLength = sentence;
  String[] sentenceArray = new String[sentenceLength.length()];
  int numberOfCapital, numberOfVowels, maxLetters, punctuationCount, amountOfWords, index;

  void setup() {
    background(0);
    fill(255);
    lengthOfSentence();
    capitalLetters();
    vowels();
    wordCount();
    punctuation();
    mostUsedLetter();
    text("Sentence: " + sentence, 300, 150);
  }

  void draw() {
  }

  void lengthOfSentence() {
    text("Length of the sentence: " + sentenceLength.length() + " characters", 300, 200);
  }

  void capitalLetters() {
    //Looping over the length of the string.
    for (int i = 0; i < sentence.length(); i++) {
      //Making the string a character. char means character.
      //So, it will become c will become the character based off of how far you
      //are in the loop cause of the charAt(i).
      char c = sentence.charAt(i);
      //This is the real code, checking if it is between A and Z. Then adding
      //1 to the count. EZPZ.
      if (c >= 'A' && c <= 'Z') {
        numberOfCapital++;
      }
    }
    text("Number of capital letters: " + numberOfCapital, 300, 250);
  }

  void vowels() {
    for (int i = 0; i < sentence.length(); i++) {
      char c = sentence.charAt(i);
      if (c == 'a' || c == 'A' || c == 'e' || c == 'E' || c == 'i' || c == 'I' || c == 'o' || c == 'O' || c == 'u' || c == 'U') {
        numberOfVowels++;
      }
    }
    text("Number of vowels: " + numberOfVowels, 300, 300);
  }

  void wordCount() {
    for (int i = 0; i < sentence.length(); i++) {
      String[] list = split(sentence, ' ');
      amountOfWords = list.length;
    }
    text("Number of words in sentence: " + amountOfWords, 300, 350);
  }

  void punctuation() {
    for (int i = 0; i < sentence.length(); i++) {
      char c = sentence.charAt(i);
      if (c == '\'' || c == ':' || c ==  ';' || c == '.' || c == ',' || c == '!' || c == '?') {
        punctuationCount++;
      }
    }
    text("Number of punctuation marks: " + punctuationCount, 300, 400);
  }

  void mostUsedLetter() {
    //Lowercase
    char[] lowercaseArray = sentence.toLowerCase().toCharArray();
    int[] allLetters = new int [26];
    for (int i = 0; i < lowercaseArray.length; i++) {
      //Making sure it is a letter  
      if (lowercaseArray[i] >= 'a' && lowercaseArray[i] <='z') {
        //ASCII value. Subtract a from anything and you get the correct index. a - b = 1. a - a = 0.
        allLetters[lowercaseArray[i]-'a']++;
      }
    } //maxLetters, index
    for (int i = 0; i < allLetters.length; i++) {
      if (allLetters[i] > maxLetters) {
        maxLetters = allLetters[i];
        index = i;
      }
    }
    char mostOccuringLetter = char('a' + index);
    text("Most occuring letter: " + mostOccuringLetter + " has occured " + maxLetters + " times.", 300, 450);
  }
}