String solution(str) {
  return str.split('').reversed.join('');
}

// Test cases

void main() {
  print(solution('world')); // dlrow
  print(solution('hello')); // olleh
  print(solution('')); // ''
}
