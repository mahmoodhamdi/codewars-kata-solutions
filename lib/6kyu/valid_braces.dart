bool validBraces(String braces) {
List<String> stack = [];
for (int i = 0; i < braces.length; i++) {
  if (braces[i] == '(' || braces[i] == '[' || braces[i] == '{') {
    stack.add(braces[i]);
  } else {
    if (stack.isEmpty) {
      return false;
    }
    String top = stack.removeLast();
    if ((braces[i] == '}' && top != '{') ||
        (braces[i] == ']' && top != '[') ||
        (braces[i] == ')' && top != '(')) {
      return false;
    }
  }
}
return stack.isEmpty;
}


// Test cases

void main() {
  print(validBraces("(){}[]")); // true
  print(validBraces("([{}])")); // true
  print(validBraces("(]")); // false
  print(validBraces("[(])")); // false

}