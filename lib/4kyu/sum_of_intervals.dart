int sumOfIntervals(List<List<int>> intervals) {
  if (intervals.isEmpty) return 0;

  // Sort intervals by start value
  intervals.sort((a, b) => a[0].compareTo(b[0]));

  List<List<int>> merged = [];
  List<int> current = intervals[0];

  for (int i = 1; i < intervals.length; i++) {
    List<int> next = intervals[i];

    if (current[1] >= next[0]) {
      // Overlapping: merge them
      current[1] = current[1] > next[1] ? current[1] : next[1];
    } else {
      // No overlap: add current to merged and move on
      merged.add(current);
      current = next;
    }
  }

  // Add the last interval
  merged.add(current);

  // Calculate total sum
  int sum = 0;
  for (var interval in merged) {
    sum += interval[1] - interval[0];
  }

  return sum;
}

// Test cases

void main() {
  List<List<int>> intervals1 = [
    [1, 2],
    [6, 10],
    [11, 15],
  ];
  print(sumOfIntervals(intervals1)); // Output: 10

  List<List<int>> intervals2 = [
    [1, 4],
    [7, 10],
    [3, 5],
  ];
  print(sumOfIntervals(intervals2)); // Output: 7
}
