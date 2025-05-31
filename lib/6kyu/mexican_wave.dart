List<String> wave(String str) {
  List<String> result = [];

  for (int i = 0; i < str.length; i++) {
    if (str[i] == ' ') continue; // تجاهل المسافات

    String waved = str.substring(0, i) +
        str[i].toUpperCase() +
        str.substring(i + 1);

    result.add(waved);
  }

  return result;
}

// Test cases


void main() {
  print(wave("hello"));
  // ["Hello", "hEllo", "heLlo", "helLo", "hellO"]

  print(wave(" s p a c e s "));
  // [" S p a c e s ", " s P a c e s ", " s p A c e s ", " s p a C e s ", " s p a c E s ", " s p a c e S "]

  print(wave("")); // []
}
