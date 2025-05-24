List josephus(final List items, final int k) {
  List result = [];
  int index = 0;
  List copy = List.from(items);

  while (copy.isNotEmpty) {
    index = (index + k - 1) % copy.length;
    result.add(copy.removeAt(index));
  }

  return result;
}

// Test cases

void main (){
  print(josephus([1, 2, 3, 4, 5, 6, 7, 8, 9, 10], 3));
  print(josephus([1, 2, 3, 4, 5, 6, 7, 8, 9, 10], 2));
  print(josephus([1, 2, 3, 4, 5, 6, 7, 8, 9, 10], 1));
  print(josephus([1, 2, 3, 4, 5, 6, 7, 8, 9, 10], 10));
}