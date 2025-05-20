int sumArray(List<int>? array) {
  if (array == null || array.isEmpty || array.length <= 1) {
    return 0;
  }
  
  int min = array.reduce((a, b) => a < b ? a : b);
  int max = array.reduce((a, b) => a > b ? a : b);
  
  // Sum all elements and subtract min and max
  int sum = array.reduce((a, b) => a + b);
  return sum - min - max;
}

// Test cases

void main() {
  print(sumArray([6, 2, 1, 8, 10])); // 16
  print(sumArray([1, 1, 11, 2, 3])); // 6
  print(sumArray([66])); // 66
  print(sumArray(null)); // 0
}
