import 'package:test/test.dart';
import 'package:todash/todash.dart';

void main() {
  group('clone', () {
    test('[1] == [1] is false', () {
      expect([1] == [1], false);
    });

    test('list == list is true', () {
      var list = [1];
      expect(list == list, true);
    });

    test('clone(list) == list is false', () {
      var list = [1];
      expect(clone(list) == list, false);
    });

    test('clone(list)[0] == list[0] is true', () {
      var list = [
        [1]
      ];
      expect(clone(list)[0] == list[0], true);
    });

    test('deepClone(list)[0] == list[0] is false', () {
      var list = [
        [1]
      ];
      expect(cloneDeep(list)[0] == list[0], false);
    });

    test('cloneWith(list)', () {
      var list = [
        [1]
      ];
      expect(cloneWith(list, (cloned) => cloned[0]), [1]);
    });
  });
}
