int calculate(List<List<int>> rectangles) {
  List<Event> events = [];
  if (rectangles.isEmpty) return 0;

  for (var rect in rectangles) {
    int x0 = rect[0], y0 = rect[1], x1 = rect[2], y1 = rect[3];
    events.add(Event(x0, 1, y0, y1)); // entering event
    events.add(Event(x1, -1, y0, y1)); // leaving event
  }

  events.sort();

  List<List<int>> active = [];
  int prevX = events[0].x;
  int area = 0;

  for (var e in events) {
    int dx = e.x - prevX;
    if (dx > 0) {
      int unionY = _calculateYUnion(active);
      area += dx * unionY;
      prevX = e.x;
    }

    if (e.type == 1) {
      active.add([e.y0, e.y1]);
    } else {
      _removeOne(active, [e.y0, e.y1]); // ✅ استخدم إزالة واحدة فقط
    }
  }

  return area;
}

void _removeOne(List<List<int>> active, List<int> target) {
  for (int i = 0; i < active.length; i++) {
    if (active[i][0] == target[0] && active[i][1] == target[1]) {
      active.removeAt(i);
      return;
    }
  }
}

int _calculateYUnion(List<List<int>> intervals) {
  if (intervals.isEmpty) return 0;

  intervals.sort((a, b) => a[0] - b[0]);

  int total = 0;
  int curStart = intervals[0][0];
  int curEnd = intervals[0][1];

  for (int i = 1; i < intervals.length; i++) {
    var intv = intervals[i];
    if (intv[0] <= curEnd) {
      curEnd = curEnd > intv[1] ? curEnd : intv[1];
    } else {
      total += curEnd - curStart;
      curStart = intv[0];
      curEnd = intv[1];
    }
  }
  total += curEnd - curStart;
  return total;
}

class Event implements Comparable<Event> {
  final int x, type, y0, y1;
  Event(this.x, this.type, this.y0, this.y1);

  @override
  int compareTo(Event other) {
    if (x != other.x) return x - other.x;
    return other.type - type; // Start events (+1) before end events (-1)
  }
}

void main() {
  var rectangles = [
    [3, 3, 8, 5], // Area 10
    [6, 3, 8, 9], // Area 12, overlaps with first by 4
    [11, 6, 14, 12], // Area 18
  ];
  print(calculate(rectangles)); // Output: 36
}
