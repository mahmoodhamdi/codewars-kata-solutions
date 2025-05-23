int squareSum(List numbers) {
  num sum = 0;
  for (int i = 0; i < numbers.length; i++) {
    sum += numbers[i] * numbers[i];
  }

  return sum.toInt();
}

// Test cases

void main(){
  print(squareSum([1, 2]));
  print(squareSum([0, 3, 4, 5]));
  print(squareSum([]));
  print(squareSum([-1, -2]));
  print(squareSum([-1, 0, 1]));
}

