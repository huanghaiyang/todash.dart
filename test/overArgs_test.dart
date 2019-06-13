import 'package:todash/todash.dart';
import 'package:test/test.dart';

void main() {
  group('A group of overArgs method tests', () {

    setUp(() {

    });

    test('test overArgs', () {
      List list = new List();
      list.add(81);
      list.add(6);
      
      List<Function> transforms = new List();
      transforms.add(square);
      transforms.add(doubled);

      Function func = overArgs((int x, int y) {
        List list = new List();
        list.add(x);
        list.add(y);
        return list;
      }, transforms);
      expect(func(9, 3), list);
    });

  });
}
