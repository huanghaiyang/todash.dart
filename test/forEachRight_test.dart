import 'package:test/test.dart';
import 'package:todash/todash.dart';

void main() {
  group('forEachRight', () {
    test('should return 2, 1', () {
      List result = [];
      forEachRight([1, 2], (value, index, collection) {
        result.add(value);
      });
      expect(result, [2, 1]);
    });
  });
}
