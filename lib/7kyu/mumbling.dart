String accum(String str) {

  return str
      .split('')
      .asMap()
      .map((index, char) => MapEntry(index, char.toUpperCase() + char.toLowerCase() * index))
      .values
      .join('-');

}

// Test cases

void main() {
  print(accum('abcd')); // Output: "A-Bb-Ccc-Dddd"
  print(accum('RqaEzty')); // Output: "R-Qq-Aaa-Eeee-Zzzzz-Tttttt-Yyyyyyy"
  print(accum('cwAt')); // Output: "C-Ww-Aaa-Tttt"
}