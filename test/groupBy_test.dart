import 'package:test/test.dart';
import 'package:todash/todash.dart';

void main() {
  group('groupBy', () {
    test('should work with defference types', ()
    {
      List collection = [1, 2, 3, null, {}, true, [1]];
      Map result = groupBy(collection, (value, index, array) {
        if (value == null) return 'isNull';
        return 'notNull';
      });
      expect(result, {
        'isNull': [null],
        'notNull': [1, 2, 3, {}, true, [1]]
      });
    });
  });
}
