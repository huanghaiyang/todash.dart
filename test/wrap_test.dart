import 'package:test/test.dart';
import 'package:todash/todash.dart';

void main() {
  group('wrap', () {
    test('should create a wrapped function', () {
      var p = wrap((String text) {
        return text.replaceAll(new RegExp("&"), "&amp;");
      }, (func, text) {
        return '<p>' + func(text) + '</p>';
      });

      expect(
          p('fred, barney, & pebbles'), '<p>fred, barney, &amp; pebbles</p>');
    });
  });
}
