BigInt perimeter(int m) {
  BigInt a = BigInt.one; // F(1)
  BigInt b = BigInt.one; // F(2)
  BigInt sum = a + b; // sum = F(1) + F(2)

  for (int i = 2; i <= m; i++) {
    BigInt next = a + b;
    sum += next;
    a = b;
    b = next;
  }

  return sum * BigInt.from(4); // 4 * (F(1) + F(2) + ... + F(m+1))
}


// Test cases

void main() {
  print(perimeter(5)); // 80
  print(perimeter(7)); // 216
}
