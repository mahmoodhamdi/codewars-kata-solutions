String rgb(int r, int g, int b) {
  String rHex = r.clamp(0, 255).toInt().toRadixString(16).padLeft(2, '0');
  String gHex = g.clamp(0, 255).toInt().toRadixString(16).padLeft(2, '0');
  String bHex = b.clamp(0, 255).toInt().toRadixString(16).padLeft(2, '0');

  return '${rHex}${gHex}${bHex}'.toUpperCase(); // لاحظ الـ #
}

void main() {
  print(rgb(255, 255, 300)); // "#FFFFFF"
  print(rgb(0, 0, 0)); // "#000000"
  print(rgb(148, 0, 211)); // "#9400D3"
}
