String evenOrOdd(int number) {
  return number % 2 == 0 ? 'Even' : 'Odd';
}

// Test cases
void main() {
  print(evenOrOdd(2)); // 'Even'
  print(evenOrOdd(7)); // 'Odd'
  print(evenOrOdd(0)); // 'Even'
}