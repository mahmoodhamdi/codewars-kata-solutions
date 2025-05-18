List<int> bonus(List<int> arr, int s) {
  // Step 1: Calculate the sum of reciprocals of days absent
  double reciprocalSum = arr.fold(0.0, (sum, a) => sum + (1 / a));

  // Step 2: Calculate the constant k
  double k = s / reciprocalSum;

  // Step 3: Calculate each bonus = k / days absent
  List<double> rawBonuses = arr.map((a) => k / a).toList();

  // Step 4: Convert to integers with rounding and fix the rounding error
  List<int> bonuses = rawBonuses.map((b) => b.round()).toList();

  // Step 5: Adjust to make sure the total equals `s`
  int currentSum = bonuses.reduce((a, b) => a + b);
  int diff = s - currentSum;

  // Adjust bonuses to fix rounding errors
  while (diff != 0) {
    int index = 0;
    double maxFraction = 0.0;

    for (int i = 0; i < rawBonuses.length; i++) {
      double frac = rawBonuses[i] - bonuses[i];
      if ((diff > 0 && frac > maxFraction) ||
          (diff < 0 && frac < maxFraction)) {
        maxFraction = frac;
        index = i;
      }
    }

    bonuses[index] += diff > 0 ? 1 : -1;
    diff += diff > 0 ? -1 : 1;
  }

  return bonuses;
}


// Test cases
void main() {
  print(bonus([18, 15, 12], 851)); // -> [230, 276, 345]

  print(bonus([30, 27, 8, 14, 7], 34067)); //-> [2772, 3080, 10395, 5940, 11880]
}
