int past(int h, int m, int s) {
  return h * 3600000 + m * 60000 + s * 1000;
}

// Test cases
void main() {
  print(past(0, 1, 1)); // 61000
  print(past(1, 1, 1)); // 3661000
  print(past(0, 0, 0)); // 0
}
