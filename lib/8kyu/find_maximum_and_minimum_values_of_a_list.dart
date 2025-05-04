
int min(List<int> list) {
int min = list.first;
  for (int i = 1; i < list.length; i++) {
    if (list[i] < min) {
      min = list[i];
    }
  }
  return min;
}

int max(List<int> list) {
  int max = list.first;
  for (int i = 1; i < list.length; i++) {
    if (list[i] > max) {
      max = list[i];
    }
  }
  return max;
  }

// Test cases
void main() {
  print(min([1, 3, 2])); // 1
  print(max([1, 3, 2])); // 3
}

