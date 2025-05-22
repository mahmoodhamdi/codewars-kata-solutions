import "dart:core";

int getCount(String inputStr) {
  int count = 0;
  for (int i = 0; i < inputStr.length; i++) {
    if (inputStr[i] == 'a' ||
        inputStr[i] == 'e' ||
        inputStr[i] == 'i' ||
        inputStr[i] == 'o' ||
        inputStr[i] == 'u') {
      count++;
    }
  }
  return count;
}

// Test cases

void main() {
  print(getCount("abracadabra"));

  print(getCount("bcdfghjklmnpqrstvwxy"));

  print(getCount(""));

  print(getCount("123"));

  print(getCount("aeiou"));
}
