List<String> solution(String s) {
  List<String> result = [];
  for (var i = 0; i < s.length; i += 2) {
    if (i + 1 < s.length) {
      result.add(s.substring(i, i + 2));
    } else {
      result.add(s[i] + '_');
    }
  }
  return result;
}

// Test cases
void main() {
  print(solution("abcdef")); // ["ab", "cd", "ef"]
  print(solution("abcdefg")); // ["ab", "cd", "ef", "g_"]
  print(solution("a")); // ["a_"]
  print(solution("")); // []
}
