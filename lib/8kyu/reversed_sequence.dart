List<int> reverseSeq(int n) {
 return List.generate(n, (index) => n - index); 
}


// Test cases
void main() {
  print(reverseSeq(5)); // [5, 4, 3, 2, 1]
  print(reverseSeq(4)); // [4, 3, 2, 1]
  print(reverseSeq(1)); // [1]
}