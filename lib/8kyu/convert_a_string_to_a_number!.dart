int stringToNumber(String str) {
  return int.parse(str);
}

// Test cases
void main() {
  print(stringToNumber("1234")); // 1234
  print(stringToNumber("605")); // 605
  print(stringToNumber("1405")); // 1405
  print(stringToNumber("-7")); // -7
}