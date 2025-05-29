String orderWeight(String strng) {
  if (strng.trim().isEmpty) return '';

  List<String> numbers = strng.trim().split(RegExp(r'\s+'));

  numbers.sort((a, b) {
    int weightA = a.split('').map(int.parse).reduce((x, y) => x + y);
    int weightB = b.split('').map(int.parse).reduce((x, y) => x + y);

    if (weightA == weightB) {
      return a.compareTo(b); // 
    } else {
      return weightA.compareTo(weightB); 
    }
  });

  return numbers.join(' ');
}

// Test cases

void main() {
  print(orderWeight("56 65 74 100 99 68 86 180 90"));
  // output: "100 180 90 56 65 74 68 86 99"

  print(orderWeight("     103   123  4444 99 2000  "));
  // output: "2000 103 123 4444 99"

  print(orderWeight(""));
  // output: ""
}

