int findSmallestInt(List<int> arr) {
int smallest = arr[0]; // Initialize with first element
  for (var i = 1; i < arr.length; i++) {
    if (arr[i] < smallest) {
      smallest = arr[i];
    }
  }
  return smallest;
}

// Test cases

void main() {
  print(findSmallestInt([78, 56, 232, 12, 8])); // 8
  print(findSmallestInt([78, 56, 232, 12, 18])); // 12
  print(findSmallestInt([78, 56, 232, 412, 228])); // 56
}
