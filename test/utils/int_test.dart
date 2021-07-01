import 'package:dart_jikan/src/utils/index.dart';
import 'package:test/test.dart';

void main() {
  test('convert a string to int safely', () {
    final value = '22';
    expect(toInt(value), 22);
  });

  test('convert an empty string to 0 safely', () {
    final value = '';
    expect(toInt(value), 0);
  });

  test('return an int as int (no action)', () {
    final value = 33;
    expect(toInt(value), 33);
  });

  test('return a null as 0', () {
    final value = null;
    expect(toInt(value), 0);
  });
}
