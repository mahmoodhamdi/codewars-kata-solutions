  int countSheep(List<bool?> arr) {
    int count = 0;
    for (var i = 0; i < arr.length; i++) {
      if (arr[i] == true) {
        count++;
      }
    }
    return count;
  
}

// Test cases

void main() {
  print(countSheep([
      true,
      true,
      true,
      false,
      true,
      true,
      true,
      true,
      true,
      false,
      true,
      false,
      true,
      false,
      false,
      true,
      true,
      true,
      true,
      true,
      false,
      false,
      true,
      true,
    ])); // 17
  print(countSheep([false, false, true, false, true])); // 2
  print(countSheep([true, false, false, false, false])); // 0
}