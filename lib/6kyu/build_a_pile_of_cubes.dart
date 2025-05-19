int findNb(int m) {
  int n = 0;
  int sum = 0;
  while (sum < m) {
    n++;
    sum += n * n * n;
  }
  return sum == m ? n : -1;
}

// Test cases


void main() {
  print(findNb(1071225)); // 45
  print(findNb(24723578342962)); // -1
  print(findNb(135440716410000)); // 4824
  print(findNb(40539911473216)); // 3568
  print(findNb(26825883955641)); // -1
  }