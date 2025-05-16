String highAndLow(String numbers) {
  List<int> nums = numbers.split(' ').map(int.parse).toList();
  return '${nums.reduce((a, b) => a > b ? a : b)} ${nums.reduce((a, b) => a < b ? a : b)}';
}

// Test cases

void main() {
  print(highAndLow("1 2 3 4 5")); // "5 1"
  print(highAndLow("1 2 -3 4 5")); // "5 -3"
  print(highAndLow("1 9 3 4 -5")); // "9 -5"
}