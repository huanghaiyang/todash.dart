import 'package:todash/todash.dart';
import 'package:test/test.dart';

void main() {
  group('A group of after method tests', () {

    setUp(() {

    });

    test('test after', () {
      List list = new List();
      list.add(1);
      list.add(2);
      Function func = after(list.length, () {
        print('complete.');
      });
      list.forEach((i) {
        print(i);
        func();
      });
    });

  });
}
