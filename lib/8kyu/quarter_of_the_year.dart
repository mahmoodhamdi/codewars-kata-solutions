int quarter(int month) {
  return (month - 1) ~/ 3 + 1;
  // return the quarter for this `month`
}

// Test cases
void main() {
  print(quarter(3)); // 1
  print(quarter(6)); // 2
  print(quarter(8)); // 3
  print(quarter(11)); // 4
}