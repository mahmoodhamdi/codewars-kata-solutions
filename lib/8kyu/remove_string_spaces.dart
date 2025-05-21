String noSpace(String x) {
  return x.replaceAll(' ', '');
}

// Test cases

void main() {
  print(noSpace('8 j 8   mBliB8g  imjB8B8  jl  B'));
}