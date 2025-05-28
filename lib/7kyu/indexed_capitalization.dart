String capitalize(String s, List<int> ind) {
  String result = '';
  for (int i = 0; i < s.length; i++) {
    if (ind.contains(i)) {
      result += s[i].toUpperCase();
    } else {
      result += s[i];
    }
  }
  return result;
}


// Test cases

void main(){
  print(capitalize("abcdef", [1, 2, 5]));
  print(capitalize("codewars", []));
  print(capitalize("abracadabra", [4, 6, 9, 1101, 1500]));
}