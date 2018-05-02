String sentence = "Do you want to build a snowman?";
String sentenceLength = sentence;
char[] alphabet = {'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'};
char[] charSentence = sentence.toCharArray();
int[] allLetters = new int [alphabet.length()];
String[] sentenceArray = new String[sentenceLength.length()];
int numberOfCapital, numberOfVowels, mostOccuringLetter, punctuationCount, amountOfWords;

void setup() {
  background(0);
  size(600, 600);
  lengthOfSentence();
  capitalLetters();
  vowels();
  mostUsedLetter();
  punctuation();
  wordCount();
}

void draw() {
  text(sentence, 100, 100);
  noLoop(); //draw doesn't need to happen for this exercise
}

void lengthOfSentence() {
  text("Length of the sentence: " + sentenceLength.length(), 100, 200);
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
  text("Number of capital letters: " + numberOfCapital, 100, 300);
}

void vowels() {
  for (int i = 0; i < sentence.length(); i++) {
    char c = sentence.charAt(i);
    if (c == 'a' || c == 'A' || c == 'e' || c == 'E' || c == 'i' || c == 'I' || c == 'o' || c == 'O' || c == 'u' || c == 'U') {
      numberOfVowels++;
    }
  }
  text("Number of vowels: " + numberOfVowels, 100, 400);
}

void mostUsedLetter() {
  for (int i = 0; i < alphabet.length; i++) {
    if (alphabet[i] == charSentence[]) {
      allLetters[i] += 1;
    } else {
    }
    
  }
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

void wordCount() {
  for (int i = 0; i < sentence.length(); i++) {
    String[] list = split(sentence, ' ');
    amountOfWords = list.length;
  }
  text("Number of words in sentence: " + amountOfWords, 100, 500);
}
