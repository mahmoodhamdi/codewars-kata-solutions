String smash(List<String> words) {
  return words.join(" ");
}

// Test cases
void main() {
  print(smash(["hello", "world"])); // "hello world"
  print(
    smash(["this", "is", "a", "really", "long", "sentence"]),
  ); // "this is a really long sentence"
  print(smash([])); // ""
  print(smash(["a"])); // "a"
  print(smash(["a", "b"])); // "a b"
}
