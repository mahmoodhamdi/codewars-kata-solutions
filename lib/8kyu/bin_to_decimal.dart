int binToDec(bin) {
  return int.parse(bin, radix: 2);
}

// Test cases

void main(){
  print(binToDec('100'));
  print(binToDec('101'));
  print(binToDec('110'));
  print(binToDec('111'));
  print(binToDec('10010010')); //73
}