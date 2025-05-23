 frame(String balls) {
  const blz = {
    'R': 1, // red
    'Y': 2, // yellow
    'G': 3, // green
    'Bn': 4, // brown
    'Be': 5, // blue
    'P': 6, // pink
    'Bk': 7, // black
    'W': 0, // white (foul)
  };

  if (balls.contains('W')) {
    return 'Foul';
  }

  int totalPoints = 0;
  int i = 0;

  while (i < balls.length) {
    // Determine color (single or two-character)
    String color;
    if (i + 1 < balls.length && blz.containsKey(balls.substring(i, i + 2))) {
      color = balls.substring(i, i + 2);
      i += 2;
    } else {
      color = balls[i];
      i += 1;
    }

    // Parse number (if any)
    int count = 1;
    if (i < balls.length && balls[i].contains(RegExp(r'\d'))) {
      String num = '';
      while (i < balls.length && balls[i].contains(RegExp(r'\d'))) {
        num += balls[i];
        i++;
      }
      count = int.parse(num);
    }

    totalPoints += blz[color]! * count;
  }

  return totalPoints > 147 ? 'invalid data' : totalPoints;
}

void main() {
  print(frame("G9G11P9Bn2Bn1Be10G7WBn10G3")); // Foul
  print(frame("Bn14Bn14Bn8P9")); // 103
  print(frame("R15P3G1Bk4Y1Bn1Be3")); // 62
  print(frame("R13Bk14YRGBnBkRBePBk1")); // 77
}
