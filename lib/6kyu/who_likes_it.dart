String likes(List<String> names) {
  if (names.isEmpty) {
    return "no one likes this";
  } else if (names.length == 1) {
    return "${names[0]} likes this";
  } else if (names.length == 2) {
    return "${names[0]} and ${names[1]} like this";
  } else if (names.length == 3) {
    return "${names[0]}, ${names[1]} and ${names[2]} like this";
  } else {
    return "${names[0]}, ${names[1]} and ${names.length - 2} others like this";
  }
}

// Test cases

void main() {
  print(likes([])); // "no one likes this"
  print(likes(["Peter"])); // "Peter likes this"
  print(likes(["Jacob", "Alex"])); // "Jacob and Alex like this"
  print(likes(["Max", "John", "Mark"])); // "Max, John and Mark like this"
  print(
    likes(["Alex", "Jacob", "Mark", "Max"]),
  ); // "Alex, Jacob and 2 others like this"
}
