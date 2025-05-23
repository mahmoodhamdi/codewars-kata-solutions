String getMiddle(String s) {
  if (s.length % 2 == 0) {
    return s.substring(s.length ~/ 2 - 1, s.length ~/ 2 + 1);
  } else {
    return s[s.length ~/ 2].toString();
  }
}

// Test cases

void main() {
  print(getMiddle('test'));
  print(getMiddle('testing'));
  print(getMiddle('middle'));
  print(getMiddle('A'));
}