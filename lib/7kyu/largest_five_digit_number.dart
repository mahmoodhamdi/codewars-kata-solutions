int solution(String digits) {
  int max = 0;
  for (int i = 0; i <= digits.length - 5; i++) {
    int current = int.parse(digits.substring(i, i + 5));
    if (current > max) {
      max = current;
    }
  }
  return max;
}

// Test cases

void main() {
  print(solution("1234567890")); // 67890
  print(solution("123456910132")); // 91013
  print(solution("12345")); // 12345
}
