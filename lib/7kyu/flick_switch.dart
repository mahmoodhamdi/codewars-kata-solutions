List<bool> flickSwitch(List<String> lst) {
  bool f = true;
  List<bool> result = [];
  for (int i = 0; i < lst.length; i++) {
    if (lst[i] == "flick") {
      f = !f;
      result.add(f);
    } else {
      result.add(f);
    }
  }
  return result;
}
