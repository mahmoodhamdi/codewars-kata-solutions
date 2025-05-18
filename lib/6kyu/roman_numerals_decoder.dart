int romanToInt(String s) {
  Map<String, int> map = {
    "I": 1,
    "V": 5,
    "X": 10,
    "L": 50,
    "C": 100,
    "D": 500,
    "M": 1000,
  };

  int result = 0;
  for (int i = 0; i < s.length; i++) {
    if (i < s.length - 1 && map[s[i]]! < map[s[i + 1]]!) {
      result -= map[s[i]]!;
    } else {
      result += map[s[i]]!;
    }
  }
  return result;
}

// Test cases

void main() {
  print(romanToInt('MM')); // 2000
  print(romanToInt('IV')); // 4
  print(romanToInt('MMVIII')); // 2008
  print(romanToInt('MDCLXVI')); // 1666
  print(romanToInt('MMDCCCLXXVIII')); // 2888
}
