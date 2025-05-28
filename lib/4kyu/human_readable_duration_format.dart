String formatDuration(int seconds) {
  if (seconds == 0) return 'now';

  final units = [
    ['year', 31536000],
    ['day', 86400],
    ['hour', 3600],
    ['minute', 60],
    ['second', 1],
  ];

  List<String> parts = [];

  for (var unit in units) {
    String name = unit[0] as String;
    int value = unit[1] as int;
    int count = seconds ~/ value;

    if (count > 0) {
      parts.add('$count $name${count > 1 ? 's' : ''}');
      seconds -= count * value;
    }
  }

  if (parts.length == 1) {
    return parts.first;
  } else {
    // نربط كل العناصر بفواصل مع "and" قبل الأخير
    return parts.sublist(0, parts.length - 1).join(', ') + ' and ' + parts.last;
  }
}

// Test cases

void main() {
  print(formatDuration(0)); // now
  print(formatDuration(1)); // 1 second
  print(formatDuration(62)); // 1 minute and 2 seconds
  print(formatDuration(3662)); // 1 hour, 1 minute and 2 seconds
  print(formatDuration(31536000)); // 1 year
  print(formatDuration(31536001)); // 1 year and 1 second
  print(formatDuration(132030240)); // 4 years, 68 days, 3 hours and 4 minutes
}
